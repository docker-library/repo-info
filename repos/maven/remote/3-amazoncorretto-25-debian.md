## `maven:3-amazoncorretto-25-debian`

```console
$ docker pull maven@sha256:d57c1d001dd06f66203cf4fa7a9f108ec68a7260c2f709e3165d89c4135ba240
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-amazoncorretto-25-debian` - linux; amd64

```console
$ docker pull maven@sha256:a735e4403dae7557c93da4ca8e161ac2ba6d033ac40e6c215ce22e6d4a136031
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.8 MB (274846705 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c85328594c8c21f1ecbadc38b1b68957c405957e4b6003e5689cc6bd6856a944`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 05:15:29 GMT
RUN apt-get update   && apt-get install -y curl gnupg openssh-client   && export GNUPGHOME="$(mktemp -d)"   && curl -fL https://apt.corretto.aws/corretto.key -o corretto.key   && echo '6db32832d82839d368181ae730df7d642b0bff161277f0ab6023359d347cca6b *corretto.key' | sha256sum -c -   && gpg --batch --import corretto.key   && rm corretto.key   && gpg --batch --export '6DC3636DAE534049C8B94623A122542AB04F24E3' > /usr/share/keyrings/corretto.gpg   && unset GNUPGHOME   && echo "deb [signed-by=/usr/share/keyrings/corretto.gpg] https://apt.corretto.aws stable main" > /etc/apt/sources.list.d/corretto.list   && apt-get update   && apt-get remove --purge --autoremove -y curl gnupg   && apt-get install -y java-25-amazon-corretto-jdk   && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 05:15:29 GMT
ENV LANG=C.UTF-8
# Tue, 24 Nov 2026 05:15:29 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-amazon-corretto
# Tue, 24 Nov 2026 05:15:29 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Tue, 24 Nov 2026 05:15:29 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Tue, 24 Nov 2026 05:15:29 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Tue, 24 Nov 2026 05:15:29 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Tue, 24 Nov 2026 05:15:29 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 24 Nov 2026 05:15:29 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Tue, 24 Nov 2026 05:15:29 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Tue, 24 Nov 2026 05:15:29 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Tue, 24 Nov 2026 05:15:29 GMT
ARG USER_HOME_DIR=/root
# Tue, 24 Nov 2026 05:15:29 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 24 Nov 2026 05:15:29 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 24 Nov 2026 05:15:29 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:40748add9f4f6f944f334cbfc286590d6e93f60fb06f6ee7ffa1b894080ad861`  
		Last Modified: Tue, 24 Nov 2026 03:40:27 GMT  
		Size: 29.8 MB (29842182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c56e28a70863f76731f08f94f5cb1e8568560551d93f8a1ba90f4405648a7156`  
		Last Modified: Tue, 24 Nov 2026 05:15:55 GMT  
		Size: 235.7 MB (235652236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70376cdafc7807eb49c45a8c5f90c548d984b622cd0441c8c897351d8797e0d9`  
		Last Modified: Tue, 24 Nov 2026 05:15:51 GMT  
		Size: 9.4 MB (9351285 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6eb50ea8da478b61bab89527066ca65106024971c2021982f3f6a0d9865cd77`  
		Last Modified: Tue, 24 Nov 2026 05:15:50 GMT  
		Size: 848.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:499340be0881220ebfd80c74c2775d9009d01cff253aa09ad10d1b21f7ea63c8`  
		Last Modified: Tue, 24 Nov 2026 05:15:50 GMT  
		Size: 154.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-25-debian` - unknown; unknown

```console
$ docker pull maven@sha256:dd4d6df833d629f40fbf7fcc44d8c360ed99e83a07abb51914e4f3af098eaab3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3134862 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18bea22dcfe97faea40ea8b9fd7b2bdfd7ad45b64300188c14684bac33f6ffaf`

```dockerfile
```

-	Layers:
	-	`sha256:722702fd4250db2efab978af24a0f299d6ae9471156223217343cefa9fee271e`  
		Last Modified: Tue, 24 Nov 2026 05:15:51 GMT  
		Size: 3.1 MB (3117334 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:717f524c14fbb5f2ca61f1214fb3b4a966f34c23d420a0f2c63b5a75eda8f2b1`  
		Last Modified: Tue, 24 Nov 2026 05:15:50 GMT  
		Size: 17.5 KB (17528 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-amazoncorretto-25-debian` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:c265a746f1c5cebdf79405e387d37bc521f1ee8daf6d9d6eb5c39562f53cffd0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.6 MB (273632423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:915665d31cd59471317dc73a61899beec67595a7129ff7195cb8e62e8dc62d94`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Fri, 20 Nov 2026 06:14:31 GMT
RUN apt-get update   && apt-get install -y curl gnupg openssh-client   && export GNUPGHOME="$(mktemp -d)"   && curl -fL https://apt.corretto.aws/corretto.key -o corretto.key   && echo '6db32832d82839d368181ae730df7d642b0bff161277f0ab6023359d347cca6b *corretto.key' | sha256sum -c -   && gpg --batch --import corretto.key   && rm corretto.key   && gpg --batch --export '6DC3636DAE534049C8B94623A122542AB04F24E3' > /usr/share/keyrings/corretto.gpg   && unset GNUPGHOME   && echo "deb [signed-by=/usr/share/keyrings/corretto.gpg] https://apt.corretto.aws stable main" > /etc/apt/sources.list.d/corretto.list   && apt-get update   && apt-get remove --purge --autoremove -y curl gnupg   && apt-get install -y java-25-amazon-corretto-jdk   && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 06:14:31 GMT
ENV LANG=C.UTF-8
# Fri, 20 Nov 2026 06:14:31 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-amazon-corretto
# Fri, 20 Nov 2026 06:14:31 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Fri, 20 Nov 2026 06:14:31 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Fri, 20 Nov 2026 06:14:31 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Fri, 20 Nov 2026 06:14:31 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Fri, 20 Nov 2026 06:14:31 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 20 Nov 2026 06:14:31 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Fri, 20 Nov 2026 06:14:31 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Fri, 20 Nov 2026 06:14:31 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Fri, 20 Nov 2026 06:14:31 GMT
ARG USER_HOME_DIR=/root
# Fri, 20 Nov 2026 06:14:31 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 20 Nov 2026 06:14:31 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 20 Nov 2026 06:14:31 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca3673490fbf4246ec7b3d7750aaa7e6148fbcafa913c80f485b722b164805b4`  
		Last Modified: Fri, 20 Nov 2026 06:14:58 GMT  
		Size: 233.4 MB (233358363 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3bff3f2074fdc053d938ee9eb5ef01e1fadfe33c5af89e55564b821d96bfc4f1`  
		Last Modified: Fri, 20 Nov 2026 06:14:54 GMT  
		Size: 10.1 MB (10059019 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43eae6636dfa818b1cf66ade5410d4876db86f98aa21c86afde3ca36c2af1ab3`  
		Last Modified: Fri, 20 Nov 2026 06:14:53 GMT  
		Size: 850.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:084c4c39f9d878adfee372234d6935643d839c78ae7d91f82c509cc04d97a7c4`  
		Last Modified: Fri, 20 Nov 2026 06:14:53 GMT  
		Size: 154.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-25-debian` - unknown; unknown

```console
$ docker pull maven@sha256:73dc9362b5f4bde4edf18eab6be9f6ee62aec622e14e8c537e12350d5b29b932
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3140966 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8844ce5dcd1831768760f043dec91b3e5ae9066ecba4cd5b68d34ef19025934`

```dockerfile
```

-	Layers:
	-	`sha256:e6dff7f6eefa0d8e5cb2ff9ab0f20501fd28167ace0e32607305e0e8639b6aa6`  
		Last Modified: Fri, 20 Nov 2026 06:14:53 GMT  
		Size: 3.1 MB (3123264 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:96e28bf738922dd73e68af1ef68c4fca38350069f149acb0fa25afb25a5d2882`  
		Last Modified: Fri, 20 Nov 2026 06:14:53 GMT  
		Size: 17.7 KB (17702 bytes)  
		MIME: application/vnd.in-toto+json
