 
 
NS=acs-test
 
kubectl get ns $NS &> /dev/null
ERR=$?
if [  "$ERR" != "0" ]
then 
    echo "Create Project $NS"
    echo "oc new-project $NS"
    oc new-project $NS 
fi 

echo "Create Repo CR"
echo "oc apply -f source-repository.yaml"
oc apply -f source-repository.yaml