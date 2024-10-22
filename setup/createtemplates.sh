#!/bin/bash

# input from values.yaml
API_KEY=""
PROJECT_NAME=""
MAIN_YAML="$PWD/setup/values.yaml"
TEMPLATE_FOLDER="$PWD/terraform/naas/setup/templates"

PROJECT_NAME_FIELD="projectName"

sed "s/^$PROJECT_NAME_FIELD: .*$/$PROJECT_NAME_FIELD: $PROJECT_NAME/" $PWD/setup/values.yaml > $PWD/setup/tmp.yaml


function apply_templates {
    echo "Starting apply_templates function"
    echo "Template folder: $TEMPLATE_FOLDER"
    echo "Temporary values file: $PWD/tmp.yaml"
    
    for templatefile in "$TEMPLATE_FOLDER"/*; do
        if [ -f "$templatefile" ]; then
            echo "Applying template: $templatefile"
            rctl apply -t "$templatefile" --values "$PWD/tmp.yaml"
            if [ $? -ne 0 ]; then
                echo "Error applying template: $templatefile"
            else
                echo "Successfully applied template: $templatefile"
            fi
        else
            echo "No template files found in $TEMPLATE_FOLDER"
        fi
    done
}

# reads values.yaml
function read_values_yaml() {
    echo "Reading values yaml"

    hostenv=$(cat values.yaml | yq e '.hostenv')
    BASE_URL="${BASE_URL}${hostenv}"
    API_KEY=$(cat values.yaml |yq e '.apikey')
    REPO_NAME=$(cat values.yaml | yq e '.repoName')
    PROJECT_NAME=$(cat values.yaml | yq e '.projectName')
    AGENT_NAME=$(cat values.yaml | yq e '.agentName')
    ORG_NAME=$(cat values.yaml | yq e '.org')

    SHARING=$(cat values.yaml | yq e '.sharingtemplates')
    IS_PRIVATE_REPO=$(cat values.yaml | yq e '.isPrivateRepo')
    USER_NAME=$(cat values.yaml | yq e '.userName')
    TOKEN=$(cat values.yaml | yq e '.token')
    END_POINT=$(cat values.yaml | yq e '.endPoint')
    PATH_VAL=$(cat values.yaml | yq e '.path')

    if [ -z "$API_KEY" ] || [ "$API_KEY" = "UPDATE_API_KEY" ]; then
        printf -- "\033[31m ERROR: Please update valid apikey in values.yaml \033[0m\n";
        exit 1
    fi

    if [ -z "$ORG_NAME" ] || [ "$ORG_NAME" = "UPDATE_ORG_NAME" ]; then
        printf -- "\033[31m ERROR: Please update valid org in values.yaml \033[0m\n";
        exit 1
    fi
    
    if [ -z "$PROJECT_NAME" ] || [ "$PROJECT_NAME" = "UPDATE_PROJECT_NAME" ]; then
        printf -- "\033[31m ERROR: Please update valid projectName in values.yaml \033[0m\n";
        exit 1
    fi

    if [ "$IS_PRIVATE_REPO" = true ]; then
        if [ -z "$USER_NAME" ] || [ "$USER_NAME" = "UPDATE_USER_NAME" ]; then
            printf -- "\033[31m ERROR: Please update valid userName in values.yaml \033[0m\n";
            exit 1
        fi

        if [ -z "$TOKEN" ] || [ "$TOKEN" = "UPDATE_TOKEN" ]; then
            printf -- "\033[31m ERROR: Please update valid token in values.yaml \033[0m\n";
            exit 1
        fi

        if [ -z "$END_POINT" ] || [ "$END_POINT" = "UPDATE_END_POINT" ]; then
            printf -- "\033[31m ERROR: Please update valid token in values.yaml \033[0m\n";
            exit 1
        fi

        if [ -z "$PATH_VAL" ] || [ "$PATH_VAL" = "UPDATE_PATH" ]; then
            printf -- "\033[31m ERROR: Please update valid path in values.yaml \033[0m\n";
            exit 1
        fi
    fi


    templates=($(cat values.yaml | yq e '.templates[]'))

    ADD_RESOURCE_TEMPLATE="apis/eaas.envmgmt.io/v1/projects/${PROJECT_NAME}/resourcetemplates"
    ADD_ENVIRONMENT_TEMPLATE="apis/eaas.envmgmt.io/v1/projects/${PROJECT_NAME}/environmenttemplates"
    ADD_DRIVER_TEMPLATE="apis/eaas.envmgmt.io/v1/projects/${PROJECT_NAME}/drivers"
    ADD_CONFIGCONTEXT_TEMPLATE="apis/eaas.envmgmt.io/v1/projects/${PROJECT_NAME}/configcontexts?fail-on-exists=true"

    #for template in "${templates[@]}"; do
    #    echo "$template"
    #done
}


read_values_yaml
apply_templates
