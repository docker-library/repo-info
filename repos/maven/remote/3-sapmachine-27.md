## `maven:3-sapmachine-27`

```console
$ docker pull maven@sha256:1c78c8fc62fc994383691f60e2021bf193b555856b3a57837d97b1b270fb8ca8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `maven:3-sapmachine-27` - linux; amd64

```console
$ docker pull maven@sha256:820fda800050672bab1bbb745b743f1c774a298b73dd6a2df8f400598dc63c9b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.9 MB (204904425 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45926269687b6f5c43ffe745fafee724a57ebbe2a49899927f1325f063d6e2c8`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 02 Oct 2026 08:10:52 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:10:52 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:10:52 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:10:54 GMT
ADD file:7121eb4a5ba391efb4ba9a38c532d1c5dc2d22d276f04e062f357eea36ee62c4 in / 
# Fri, 02 Oct 2026 08:10:55 GMT
CMD ["/bin/bash"]
# Wed, 21 Oct 2026 22:11:59 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jdk=27.0.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 22:11:59 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Wed, 21 Oct 2026 22:11:59 GMT
CMD ["jshell"]
# Wed, 21 Oct 2026 22:38:41 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 22:38:41 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Wed, 21 Oct 2026 22:38:41 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Wed, 21 Oct 2026 22:38:41 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Wed, 21 Oct 2026 22:38:41 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Wed, 21 Oct 2026 22:38:41 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 21 Oct 2026 22:38:41 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Wed, 21 Oct 2026 22:38:41 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Wed, 21 Oct 2026 22:38:41 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Wed, 21 Oct 2026 22:38:41 GMT
ARG USER_HOME_DIR=/root
# Wed, 21 Oct 2026 22:38:41 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 21 Oct 2026 22:38:41 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 21 Oct 2026 22:38:41 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:f2b4ef06ff01a67d4bed7657a4ae379a7d07934b7c3e743454a22a0d5275fb2b`  
		Last Modified: Fri, 02 Oct 2026 08:36:14 GMT  
		Size: 29.8 MB (29765758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa014b90c208a812d5153c82ea0734b3e1ea1a9cc9aa2734cfa3dcaccbcfae3f`  
		Last Modified: Wed, 21 Oct 2026 22:12:18 GMT  
		Size: 139.6 MB (139647440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15b8b52c469d9c93575b03fe35bfc4819469221a529720d03c0f41e03da8d9de`  
		Last Modified: Wed, 21 Oct 2026 22:38:54 GMT  
		Size: 25.4 MB (25431204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14585885ffe2b25ee72dd659b04125a7e45d8bbb54cfb97807be10d126dac785`  
		Last Modified: Wed, 21 Oct 2026 22:38:54 GMT  
		Size: 10.1 MB (10059013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ccb41f8f62a8809372aaec550e46ca569483356384dddb5ed60402e9c7bd42d`  
		Last Modified: Wed, 21 Oct 2026 22:38:53 GMT  
		Size: 854.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbe3b918a890cbc817acf5bcd5d9ea28b3a27af6c9149bc48dfb4f1a3c09929d`  
		Last Modified: Wed, 21 Oct 2026 22:38:53 GMT  
		Size: 156.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-sapmachine-27` - unknown; unknown

```console
$ docker pull maven@sha256:5a46224f6e78cacdc95d4c5eafd338b027d793f832fb2c8c2fe8ac764da046ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4270174 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc32583ab9f818a4476d14742da33850812e4d71bb4cb27b6cd2b4e676f2a6ee`

```dockerfile
```

-	Layers:
	-	`sha256:e0aecb20d322ee9f5178a35eae8b483595ac7e483e562be6b49ecdd8fa75e75f`  
		Last Modified: Wed, 21 Oct 2026 22:38:53 GMT  
		Size: 4.3 MB (4254259 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3583cd196d6474bcae123e1bf8fa13bb1f9faa36b917b5f9b362b3af05fb82e3`  
		Last Modified: Wed, 21 Oct 2026 22:38:53 GMT  
		Size: 15.9 KB (15915 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-sapmachine-27` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:915d7d958c096ff832cbe6c229360c537513627b34ad25ab6e9ad3fc1ceb8a2f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **203.2 MB (203243413 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:701bfbaa931c0aaffec5f59e5546f911ac91da7b4b3dd729dcfe827bd0033219`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 02 Oct 2026 08:10:23 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:10:23 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:10:23 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:10:25 GMT
ADD file:41d2e63ceb0b90641106340bc81ee11125254db51ee5a9d49e666bcf0388814f in / 
# Fri, 02 Oct 2026 08:10:26 GMT
CMD ["/bin/bash"]
# Wed, 21 Oct 2026 22:44:37 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jdk=27.0.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 22:44:37 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Wed, 21 Oct 2026 22:44:37 GMT
CMD ["jshell"]
# Wed, 21 Oct 2026 23:31:46 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 23:31:46 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Wed, 21 Oct 2026 23:31:46 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Wed, 21 Oct 2026 23:31:46 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Wed, 21 Oct 2026 23:31:46 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Wed, 21 Oct 2026 23:31:46 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 21 Oct 2026 23:31:46 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Wed, 21 Oct 2026 23:31:46 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Wed, 21 Oct 2026 23:31:46 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Wed, 21 Oct 2026 23:31:46 GMT
ARG USER_HOME_DIR=/root
# Wed, 21 Oct 2026 23:31:46 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 21 Oct 2026 23:31:46 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 21 Oct 2026 23:31:46 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:d5aec63251bb323f816a0f4b8a554bd84e478466a9ed1068daef07368328e9a3`  
		Last Modified: Fri, 02 Oct 2026 08:36:21 GMT  
		Size: 28.9 MB (28939761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:213fc38d86fb36de8232e73842d06e57d5edd34bcae0d422e0a77fea0ca091e5`  
		Last Modified: Wed, 21 Oct 2026 22:44:56 GMT  
		Size: 138.7 MB (138731903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfc99f31e63f42e505b5a13ae20aa4db9e3b7746d20deffb6edb1a430366a0ee`  
		Last Modified: Wed, 21 Oct 2026 23:31:59 GMT  
		Size: 25.5 MB (25511725 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4bacee913f4ef3b80d5cf6d1a51713b7ca28f3b7f8f2513cce29daeffb39365`  
		Last Modified: Wed, 21 Oct 2026 23:31:59 GMT  
		Size: 10.1 MB (10059016 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:481a41750c65d53bff92fa2f133e4db0a9c36afa92a96d72e8c421dbf7e3c3ef`  
		Last Modified: Wed, 21 Oct 2026 23:31:58 GMT  
		Size: 853.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fcc7c289a8c1918d93f6e3928cf0ad327a8533a5dfb922f38d616b3d03e68e12`  
		Last Modified: Wed, 21 Oct 2026 23:31:58 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-sapmachine-27` - unknown; unknown

```console
$ docker pull maven@sha256:6a6deac436c865a0be326b0852255b573b7fc9787010585aa547cc27b2f49a8d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4276922 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a060c5cf09f39fec2d5427e48320040350ce1960886580f746b06725cce8df1f`

```dockerfile
```

-	Layers:
	-	`sha256:ab053290ea5d0c2ac7ede6654490287a3f5974592deec852960d1f9d0028ea7d`  
		Last Modified: Wed, 21 Oct 2026 23:31:59 GMT  
		Size: 4.3 MB (4260826 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:64a2919f71d99eec7c6e95ac0a2d8eb09badb967c51a5d4559adadb18541aa57`  
		Last Modified: Wed, 21 Oct 2026 23:31:58 GMT  
		Size: 16.1 KB (16096 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-sapmachine-27` - linux; ppc64le

```console
$ docker pull maven@sha256:8047cef5a425e43621415d743ddbfba84c1a353e8f5ca29ff9ae4c40c610cdaf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **213.3 MB (213325737 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b524f9e182284aed3992991b2cc723ed5adc6a9427f96713267cb1840224119`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 02 Oct 2026 08:03:52 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:03:52 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:03:53 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:03:57 GMT
ADD file:453509713ec04b626052519f384e2b9d016f8f4971a3e6dd75d87e74e89202c9 in / 
# Fri, 02 Oct 2026 08:03:57 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 02:22:18 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jdk=27 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 02:22:18 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Sat, 17 Oct 2026 02:22:18 GMT
CMD ["jshell"]
# Sat, 17 Oct 2026 09:45:04 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 09:45:06 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Sat, 17 Oct 2026 09:45:06 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Sat, 17 Oct 2026 09:45:06 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Sat, 17 Oct 2026 09:45:06 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Sat, 17 Oct 2026 09:45:06 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 17 Oct 2026 09:45:06 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Sat, 17 Oct 2026 09:45:08 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Sat, 17 Oct 2026 09:45:09 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Sat, 17 Oct 2026 09:45:09 GMT
ARG USER_HOME_DIR=/root
# Sat, 17 Oct 2026 09:45:09 GMT
ENV MAVEN_CONFIG=/root/.m2
# Sat, 17 Oct 2026 09:45:09 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sat, 17 Oct 2026 09:45:09 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:d56805ebb73a9b4ab3eaf5e6375e8f25df35aba5e48ca970deb58001dac1f2ca`  
		Last Modified: Fri, 02 Oct 2026 08:36:36 GMT  
		Size: 34.4 MB (34377990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b216edb6e033fd89b09433648b85fc8be4c176295f74bf18f0a90cb6fb9696f`  
		Last Modified: Sat, 17 Oct 2026 02:23:02 GMT  
		Size: 138.9 MB (138904191 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af08a9da19fb46349db69fa3f1bbad44afa668ac0f9f669d4b252b4140c1f4d8`  
		Last Modified: Sat, 17 Oct 2026 09:45:53 GMT  
		Size: 30.0 MB (29983539 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50d40f94ae48499520a939da84c9300b7708d372f5ff4a94b7e0cf5a82b357fb`  
		Last Modified: Sat, 17 Oct 2026 09:45:51 GMT  
		Size: 10.1 MB (10059012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:feb2b6c043a3b8d342ecb67858f35ea2b084a548d6e74f22b2f3c81db351a8f9`  
		Last Modified: Sat, 17 Oct 2026 09:45:51 GMT  
		Size: 850.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55401f7847e1066b03d28ba3dceb2564477032a5ca97fdae5acc26b2d99b0b28`  
		Last Modified: Sat, 17 Oct 2026 09:45:51 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-sapmachine-27` - unknown; unknown

```console
$ docker pull maven@sha256:6db7e754e513909bbccaa7d62a674ec87e3b15454bc6664a270976c6099b6571
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4272632 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c6c0b74ab97bb986168190980c33d4ef2a44cd20e0b05d69d9b114b11d1428c`

```dockerfile
```

-	Layers:
	-	`sha256:bd7dc058d82493634beda0dc002f1e3259cf869e6b85223ed790f21f05b10802`  
		Last Modified: Sat, 17 Oct 2026 09:45:51 GMT  
		Size: 4.3 MB (4256644 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e0d6d30eb42244b3321d7da7310f5401cfe11bbc01f57389233747af647b8660`  
		Last Modified: Sat, 17 Oct 2026 09:45:51 GMT  
		Size: 16.0 KB (15988 bytes)  
		MIME: application/vnd.in-toto+json
