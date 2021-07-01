<div id="title">
<h1 align="center">
Saleor Kubernetes Platform
</h1>
</div>

<div id="description">
<p align="center">
Customer-centric e-commerce on a 
<b>modern stack.</b>
<br>
Headless, GraphQl first <b>e-commerce platform</b> delivering ultra-fast, dynamic, personalized shopping experiences.
</p>
</div>

<div id="table-of-contents">
<h2>
Table of Contents
</h2>
<ul>
<li id="stack">
<b>
<a href="#stack">Stack</a>
</b>
</li>
<li id="requirements">
<b>
<a href="#requirements">Requirements</a>
</b>
</li>
<li id="installation">
<b>
<a href="#installation">Installation</a>
</b>
</li>
<li id="tasks">
<b>
<a href="#tasks">tasks</a>
</b>
</li>
<li id="inspiration">
<b>
<a href="#inspiration">Inspiration</a>
</b>
</li>
</ul>
</div>

<div id="stack">
<h2>
Stack
</h2>
<ul>
<li id="django">
<b>
<a href="https://www.djangoproject.com/">Django</a>
</b>
<p>
An high-level
<b>
    <a href="https://www.python.org/">Python</a>
</b>
Web framework that encourages rapid development and clean,
pragmatic design.
</p>
</li>
<li id="react">
<b>
<a href="https://reactjs.org/">React</a>
</b>
<p>
A 
<b>
    JavaScript
</b>
library for building user interfaces, by 
<b>
    Facebook.
</b>
</p>
</li>
<li id="graphql">
<b>
<a href="https://graphql.org/">GraphQL</a>
</b>
<p>
GraphQL is a query language for 
<b>
    APIs
</b>
and a runtime for fulfilling those queries with your existing data.
</p>
</li>
<li id="docker">
<b>
<a href="https://www.docker.com/">Docker</a>
</b>
<p>
An open source software platform to create,
deploy and manage virtualized application
<b>
    containers
</b>
on a common operating systems. 
</p>
</li>
<li id="kubernetes">
<b>
<a href="https://kubernetes.io/">Kubernetes</a>
</b>
<p>
an open-source 
<b>
    orchestration
</b>
tool for automating deployment,
scaling, and management of containerized applications.
</p>
</li>
<li id="integration">
<b>
<a href="https://en.wikipedia.org/wiki/Continuous_integration">Continuous Integration</a>
</b>
<p>
<b>
    <a href="https://github.com/features/actions">GitHub Actions</a>
</b>
pipelines for 
<b>
    Continuous Integration
</b>
by running pre-coded tests, building, and pushing into a private
<b>
    <a href="https://hub.docker.com/">DockerHub</a>
</b>
repository.
</p>
</li>
<li id="deployment">
<b>
<a href="https://en.wikipedia.org/wiki/Continuous_deployment">Continuous Deployment</a>
</b>
<p>
<b>
    <a href="https://github.com/features/actions">GitHub Actions</a>
</b>
pipelines for
<b>
    Continuous Deployment
</b>
    by automatic deployment into a 
<b>
    <a href="https://cloud.google.com/kubernetes-engine/docs/">Google Kubernetes Engine</a>
</b>
hosted cluster.
</p>
</li>
<li id="monitoring">
<b>
<a href="https://github.com/celery/django-celery-beat">Monitoring</a>
</b>
<p>
Visualize the performance of the Kubernetes Cluster infrastructures.
By
<b>
    <a href="https://prometheus.io/">Prometheus</a>
</b>
monitoring system, and time series database integration with
<b>
    <a href="https://grafana.com/">Grafana</a>
</b>
dashboards monitoring.
</p>
</li>
</ul>
</div>

<div id="requirements">
<h2>
Requirements
</h2>
<ul>
<li>
Mandatory
<ul>
<li>
<b>
ARM64 Machine:
</b>
Some of the images used in that project are made for ARM64 architecture only.
</li>
<li>
<b>
Kubernetes Cluster:
</b>
It can be a remote or a local cluster, running by microk8s, minikube, desktop-docker, or any eqvivalent.
</li>
</ul>
</li>
<li>
Optional
<ul>
<li>
<b>
Ansible:
</b>
A popular IT automation engine that automates tasks.
</li>
<li>
<b>
Terraform:
</b>
An open-source infrastructure as code software tool that enables you to safely and predictably create, change, and improve infrastructure.
</li>
</ul>
</li>
</ul>
</div>

<div id="installation">
<h2>
Installation
</h2>
<ol>
<li id="cloning">
<b>
Cloning
</b>
<p>
Clone this repository, including the submodules by running:

```
$ git clone --recurse-submodules https://github.com/ArielLahiany/platform.git
```
</p>
</li>
<li id="github">
<b>
Code Management.
</b>
<p>
Create three GitHub repositories: Saleor (Core), Dashboard and Storefront.
Enter the relevant submodules directories, and then preform initial Commit and Push it by running:
                
```
$ git commit -m "Initial Commit"
```

```
$ git push origin master
```

</p>
</li>
<li id="dockerhub">
<b>
Tokens Generating
</b>
<p>
Generate access tokens by going to your
<a href="https://dockerhub.com">DockerHub</a>
account, and following the
<a href="https://docs.docker.com/docker-hub/access-tokens/">instructions.</a>
</p>
</li>
<li id="secrets">
<b>
    GitHub Secrets
</b>
<p>
The pipelines uses the access tokens for authentication, and in order to push the images to DockerHub repositories.
We recommend to use them by creating new
<a href="https://docs.github.com/en/actions/reference/encrypted-secrets">secrets</a>
on your GitHub repositories.
By default the variables are called:

```
DOCKERHUB_TOKEN
```            

```
DOCKERHUB_USERNAME
```

</p>
</li>
<li id="configuration">
<b>
Configuration
</b>
<p>
The platform is using a couple of variables. For security and production reasons, please change them to your own. 
</p>
<ol>
<li>
<b>
Mandatory
</b>
<ol>
<li>
<b>
SECRET_KEY:
</b>
Uses for creation of hashes.
<b>
(Inside the secret.yaml file of the Saleor Core manifests).
</b>
</li>
<li>
<b>
API_URL:
</b>
Defines URI of a running instance of the Saleor GraphQL API.
<b>
(Inside the Dockerfiles of the Storefront, and Dashboard applications).
</b>
</li>
<li>
<b>
DASHBOARD_URL:
</b>
Default Saleor Dashboard URL.
<b>
(Inside the config.yaml file of the Saleor Core manifests)
</b>
</li>
<li>
<b>
STOREFRONT_URL:
</b>
Default Saleor Storefront URL.
<b>
(Inside the config.yaml file of the Saleor Core manifests)
</b>
</li>
<li>
<b>
Image:
</b>
Please change the image section of the deployment files to your own DockerHub repositories.
<b>
(Inside all the deployment files of the Saleor Core, Storefront and Dashboard applications).
</b>
</li>
</ol>
</li>
<li>
<b>
Optional
</b>
<ol>
<li>
<b>
api_url:
</b>
An webhook for Slack notifications.
<b>
(Inside the config.yaml file of the Prometheus Alertmanager manifests).
</b>
</li>
</ol>
</li>
</ol>
</li>
<li id="building">
<b>
Building and Pushing
</b>
<p>
Go into the

```
.github/workflows/
```

directory in your repositories. You will find there the CI pipelines that are responsible for
testing, building and pushing the images to your DockerHub repositories.
Enter the

```
docker-publish.yaml
```

file, and look up for the
<b>
Build and Push
</b>
section. You'll find there the tag flag of the image. Please change it into your own DockerHub username:

```
<DockerHub_Username>/<Repository_Name>:<Tag>
```

<b>
Optional:
</b>
if you would like to get push notifications by a Slack webhook, add another access token for your channel:

```
SLACK_WEBHOOK
```

it is recommended, but not mandatory. In case you would not like to get those notifications, comment or remove the
<b>
Notification
</b>
section of the pipeline file.
</p>
</li>
<li id="applying">
<b>
Applying
</b>
<p>
The project has two main entrypoints: Kustomization file, and Ansible playbooks. You may choose each one.
</p>
<ol>
<li>
<b>
Kustomization:
</b>
In the root directory, run the following command in a terminal:

```
$ kubectl apply -k ./
```
</li>
<li>
<b>
Ansible Playbooks:
</b>
Change directory to

```
/resoucres/playbooks/
```

and run the following command:

```
$ ansible-playbooks platform.yaml
```

</li>
</ol>
<p>
Normal Django projects need to run migrations into the new database. For automation goals,
this project include
<b>
init-containers
</b>
which does that, pre-launching the pods.
</p>
</li>
<li id="populating">
<b>
Database Populating
</b>
<p>
If you like to populate your database with pre-created data, and an example superuser:
</p>
<ol>
<li>
<b>
Exec:
</b>
exec into your Django application pods.
</li>
<li>
<b>
Run:
</b>
the following command:
</li>

```
$ python manage.py populatedb --createsuperuser
```

</ol>
<p>The default credentials are:

```
admin@example.com
```

```
admin
```

</p>
</li>
</ol>
</div>

<div id="tasks">
<h2>
Tasks
</h2>
<ul>
<li>
<b>
Terraform
</b>
<p>
Fix login issues with Google Kubernetes Engine, clone the entire project and deploy it on the remote cluster automatically.
</p>
</li>
<li>
<b>
GitHub Actions
</b>
<p>
Finish CD pipelines for deployments, by integration with the GKE cluster.
</p>
</li>
<li>
<b>
Jenkins
</b>
<p>
Finish Jenkins files for building and deployments by agents which running by on-demand Kubernetes pods. 
</p>
</li>
</ul>
</div>

<div id="inspiration">
<h2>
Inspiration
</h2>
<p>
During the development of that project, I've taken inspiration and knowledge from other repositories, here on GitHub.
The main of them are listed down here: 
</p>
<ul>
<li id="saleor">
<b>
<a href="https://github.com/mirumee/saleor">Saleor</a>
</b>
<p>
A modular, high performance, headless e-commerce platform built with Python, GraphQL, Django, and React. 
</p>
</li>
<li id="gimbal">
<b>
<a href="https://github.com/projectcontour/gimbal">Gimbal</a>
</b>
<p>
An ingress load balancing platform capable of routing traffic to multiple Kubernetes and OpenStack clusters.
Built by Heptio in partnership with Actapio. 
</p>
</ul>
</div>
