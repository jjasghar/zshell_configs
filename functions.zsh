

workshop () {
  export KUBECONFIG=/home/jj/.bluemix/plugins/container-service/clusters/jj-istio101-workshop/kube-config-dal12-jj-istio101-workshop.yml
}

workshop-other () {
  export KUBECONFIG=/home/jj/.bluemix/plugins/container-service/clusters/jj-istio101-other-workshop/kube-config-dal10-jj-istio101-other-workshop.yml
}

fakemail () {
  DATE=`date +%F`
  EMAIL_USERNAME=`ruby -r faker -e 'puts Faker::Internet.username'`
  echo "${DATE}-${EMAIL_USERNAME}@asgharlabs.io"
}
