## `amazoncorretto:8-alpine3.22-jdk`

```console
$ docker pull amazoncorretto@sha256:36b46bb9c9239d576d08880616bd242d2a4ae0b7d911361e070be8530f6c9031
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:8-alpine3.22-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:d9128adbf14011c8423a78f474cabe773f0fedcfd99ef2b0234e60721c494699
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.7 MB (104663859 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f57e034a47339d75f31e4d3ef01cba9c5875be2b486670460a9b036e04e83260`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:05 GMT
ADD alpine-minirootfs-3.22.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:05 GMT
CMD ["/bin/sh"]
# Wed, 18 Nov 2026 02:45:44 GMT
ARG version=8.514.01.1
# Wed, 18 Nov 2026 02:45:44 GMT
# ARGS: version=8.514.01.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Wed, 18 Nov 2026 02:45:44 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 02:45:44 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Wed, 18 Nov 2026 02:45:44 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:710f3da1112f360bed5d2908205aeee86b9d04ecd471354cf7049a2f0bdb5c72`  
		Last Modified: Thu, 05 Nov 2026 18:01:11 GMT  
		Size: 3.8 MB (3794375 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98eac9dfc77b75afeed5e7ac2565f8f62e2e915f56ebcb847bffc0923c5899e7`  
		Last Modified: Wed, 18 Nov 2026 02:45:58 GMT  
		Size: 100.9 MB (100869484 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-alpine3.22-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:c3a1437b20f533e13c37f304728a63adeef7023d368101c464b7921e200bc65e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.0 KB (257034 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79b045e00b0d2c7c1494a86bb1fe704f27756253c499226abbf83999aecf7511`

```dockerfile
```

-	Layers:
	-	`sha256:859cdc73ee105b90fc62e81593ef244445289083141b572a1b70db5ea3d95720`  
		Last Modified: Wed, 18 Nov 2026 02:45:56 GMT  
		Size: 247.7 KB (247679 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8cc07ba2bcba249c134cf1992271ab49308737a005827a3868e192908fd481f6`  
		Last Modified: Wed, 18 Nov 2026 02:45:55 GMT  
		Size: 9.4 KB (9355 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:8-alpine3.22-jdk` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:06aaa0c931609cfcf388b938e01d2c0d2eadbbd74b029827f4df631b681d63d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.8 MB (104827365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d8bd7e1202cb56a71d1dcb8112c351012828054fd7c9fa5d5aea7032828a198`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:07 GMT
ADD alpine-minirootfs-3.22.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:07 GMT
CMD ["/bin/sh"]
# Wed, 18 Nov 2026 02:45:49 GMT
ARG version=8.514.01.1
# Wed, 18 Nov 2026 02:45:49 GMT
# ARGS: version=8.514.01.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Wed, 18 Nov 2026 02:45:49 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 02:45:49 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Wed, 18 Nov 2026 02:45:49 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:fea5b91588ca539ff8a89d7d5df6c6d65d6ab7bd89145ba57f32c302cf02ffbe`  
		Last Modified: Thu, 05 Nov 2026 18:01:13 GMT  
		Size: 4.1 MB (4127385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfa151333c15a5907746fbe801e54d597a19df1474462c30b436d4641a57a46b`  
		Last Modified: Wed, 18 Nov 2026 02:46:04 GMT  
		Size: 100.7 MB (100699980 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-alpine3.22-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:2bf8234ba79b5dc81c8f8b932644d9ddb790a788a8b3f80a717c382e969d7781
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.3 KB (257269 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2de51d655bf31a8c2742394d652f57b4f569c6170e930ea275ad97d04920bac9`

```dockerfile
```

-	Layers:
	-	`sha256:8ffb1c8c666080e80a4036826656dce35918bc26ece2d19d248625508e623785`  
		Last Modified: Wed, 18 Nov 2026 02:46:01 GMT  
		Size: 247.8 KB (247811 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:77c34c4ce0ac6d8fae2ec5b6bf2c93a5b31e232af03baaddcffb8db204e62c62`  
		Last Modified: Wed, 18 Nov 2026 02:46:01 GMT  
		Size: 9.5 KB (9458 bytes)  
		MIME: application/vnd.in-toto+json
