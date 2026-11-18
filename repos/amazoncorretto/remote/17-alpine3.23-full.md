## `amazoncorretto:17-alpine3.23-full`

```console
$ docker pull amazoncorretto@sha256:f9487bffd0c9025bb1861ecf5126b158d882257df011d34ee74588a3f6f45808
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:17-alpine3.23-full` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:36e200bb5227284c6c1c72ca83fb78403255a47420e07c60a7ce89ae6e263d7f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.1 MB (153058021 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ceef9b629c4986cddf4c572ccb184c8d163668f833bbaecf26157fea801c07bd`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:51 GMT
ADD alpine-minirootfs-3.23.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:51 GMT
CMD ["/bin/sh"]
# Tue, 17 Nov 2026 21:33:44 GMT
ARG version=17.0.21.1.2
# Tue, 17 Nov 2026 21:33:44 GMT
# ARGS: version=17.0.21.1.2
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-17=$version-r0 &&     rm -rf /usr/lib/jvm/java-17-amazon-corretto/lib/src.zip # buildkit
# Tue, 17 Nov 2026 21:33:44 GMT
ENV LANG=C.UTF-8
# Tue, 17 Nov 2026 21:33:44 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Tue, 17 Nov 2026 21:33:44 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:74c614fb2c68574f50c582dcc9c18c46618bd6ff2019768190aacfb861ce51d2`  
		Last Modified: Thu, 05 Nov 2026 18:00:58 GMT  
		Size: 3.9 MB (3852589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb1fea23d64c052b39f7e17674c2aa326c1cbb42b59c3292bce3c6839487500b`  
		Last Modified: Tue, 17 Nov 2026 21:34:01 GMT  
		Size: 149.2 MB (149205432 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-alpine3.23-full` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:ff12d6064804b30b8fb1320ecd8242fcb8540207c6fde56d6ddd7280c07c6c21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **591.9 KB (591879 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ba7db49ac0bc0a38f098c8b6eac1ae81c1231ab78a72160c7a65fdb5262933b`

```dockerfile
```

-	Layers:
	-	`sha256:35e9ff84255e5562251e0a97105d256d2533d79336187fa40baf1679da72ac6e`  
		Last Modified: Tue, 17 Nov 2026 21:33:58 GMT  
		Size: 582.5 KB (582505 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7812790cf74bde06f5e747eedc059c143f4f2db36047297899c511500c3bdf93`  
		Last Modified: Tue, 17 Nov 2026 21:33:58 GMT  
		Size: 9.4 KB (9374 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:17-alpine3.23-full` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:5fdd4dddc56d2aa327e3e4e6c230400f4d1373f9c5b80bcf9547618e3384f4ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.9 MB (151891234 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efbdf38a22361297c34be9293f8189577994944169cf8cdd58e390f52664add6`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Tue, 17 Nov 2026 21:33:22 GMT
ARG version=17.0.21.1.2
# Tue, 17 Nov 2026 21:33:22 GMT
# ARGS: version=17.0.21.1.2
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-17=$version-r0 &&     rm -rf /usr/lib/jvm/java-17-amazon-corretto/lib/src.zip # buildkit
# Tue, 17 Nov 2026 21:33:22 GMT
ENV LANG=C.UTF-8
# Tue, 17 Nov 2026 21:33:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Tue, 17 Nov 2026 21:33:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:0aeae9e5c96856ad8a51ac2a81bf4ce73766c2199992b92fd9302dd7ec7a38de`  
		Last Modified: Thu, 05 Nov 2026 18:00:56 GMT  
		Size: 4.2 MB (4190221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6811aea0951ea99f5ea66c6838fddd756f37610a88c28f63c9b62fe99ab5db2e`  
		Last Modified: Tue, 17 Nov 2026 21:33:40 GMT  
		Size: 147.7 MB (147701013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-alpine3.23-full` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:57b10392645eae34df945d8e174aa4fc487a05a93284ab9a73da0ee1cab60c1e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **590.8 KB (590752 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7bfc874befe61e0f43b0f2111b8f1e488215c10b1e8aca1c8cd44a9da82e2943`

```dockerfile
```

-	Layers:
	-	`sha256:3c1c8110933eb5ea1ae3a32dfbcd9d79f732c865cf70359ef86ebb75ee6df2c0`  
		Last Modified: Tue, 17 Nov 2026 21:33:37 GMT  
		Size: 581.3 KB (581274 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8332b26e667b5605b4cb646c24703dc1cb66e157c5c84512cc1cfdec9f69673e`  
		Last Modified: Tue, 17 Nov 2026 21:33:37 GMT  
		Size: 9.5 KB (9478 bytes)  
		MIME: application/vnd.in-toto+json
