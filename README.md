<h1 align=center>Employment Dummy API</h1>

---

<h2 align=center>Overview</h2>

<p align=center>This repository aims to simulate the behavior of an API of a web system that allows to manage the publication and application to job vacancies.</p>

---

## Requirements 🦺

- Docker engine installed (or Docker desktop)

## First Step 🚧

#### Build docker image
The first step will be to build the docker image that will contain all the project's operation. For this, we will execute the following command in the root path of this project, where the file named `Dockerfile` is located:

```sh
docker build -t dummy-api-image .
```

## Launch 🚀

To run our project, we will have to mount our docker image (the one we created earlier) in a container. To do this, we must run the following command in the root path of our project:

```sh
docker run -d -p 8000:8000 --name dummy-api-container dummy-api-image
```


## Usage 🔨

To make use of our application, we must go to the following route:

```sh
0.0.0.0:8000/docs
```

`Or 127.0.0.1:8000/docs on Windows`


This path is executed from our preferred web browser.

## Endpoint 🗺️

**Version1 EP**

<table>

<th>METHOD</th>
<th>URL</th>
<th>DESCRIPTION</th>

<tr>
<td>POST</td>
<td>/v1/apply_job_position</td>
<td>This endpoint receives two parameters (user id and job offer id), both of type UUID. The function simply evaluates if correct data was passed and returns a boolean (true if everything is correct or false if there is a failure with the entered data).</td>
</tr>