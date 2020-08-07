# flutterpetclinic ![Flutter CI](https://github.com/lepidopterists/flutter-petclinic/workflows/Flutter%20CI/badge.svg)

This front-end variant of the Spring Petclinic application only provides a UI and client-side logic. There is no back-end. The [Spring Petclinic REST](https://github.com/spring-petclinic/spring-petclinic-REST) is a back-end server which provides the necessary REST API.

<img src="https://user-images.githubusercontent.com/595430/87874707-579ccc00-c9a2-11ea-935b-9ecb4fd12e21.png" width="150">

## Similar Applications

There is a [Spring Petclinic Angular](https://github.com/spring-petclinic/spring-petclinic-angular) front-end for the same back-end.

## Getting Started

This project is a starting point for a Flutter PetClinic application.

First milestone is to reproduce the same functionality as the Spring PetClinic application and the Java EE 7 PetClinic.

- [Spring PetClinic](https://github.com/spring-projects/spring-petclinic)
- [Thomas Woehlke JavaEE7 PetClinic](https://thomas-woehlke.blogspot.com/2014/02/java-ee-7-petclinic.html)

A few resources to get started with this first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## Running this project locally

In order to execute the current project, a petclinic restful server is required. The [spring petclinic rest](https://github.com/spring-petclinic/spring-petclinic-rest.git) project is available to delivery this resource. [Maven](https://maven.apache.org/) is used in the process.

The followings steps may be accomplished to have your local petclinic rest server running

```
git clone https://github.com/spring-petclinic/spring-petclinic-rest.git
cd spring-petclinic-rest
./mvnw spring-boot:run
```
A REST back-end should running at localhost at http://localhost:9966/petclinic.
Get your server address and update petclinic.yaml to your base application address and user credentials.
