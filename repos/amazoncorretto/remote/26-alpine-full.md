## `amazoncorretto:26-alpine-full`

```console
$ docker pull amazoncorretto@sha256:1d79860472b4f7227dc0cb8d97672d0b51a417b62c437a8c5a951512724297b7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:26-alpine-full` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:1a86341181e279769fd280de946f73c2a9238229180455aa72165e2918b8cff1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.4 MB (189365609 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:552d3ba175cb50ed6abec4c774d1d8c7e7a22b9e8e4ef29ae6f959d318690352`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Thu, 20 Aug 2026 17:21:57 GMT
ARG version=26.0.2.11.1
# Thu, 20 Aug 2026 17:21:57 GMT
# ARGS: version=26.0.2.11.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-26=$version-r0 &&     rm -rf /usr/lib/jvm/java-26-amazon-corretto/lib/src.zip # buildkit
# Thu, 20 Aug 2026 17:21:57 GMT
ENV LANG=C.UTF-8
# Thu, 20 Aug 2026 17:21:57 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 20 Aug 2026 17:21:57 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fec50a2e4ad9419a2807d6b697182fc9c6deafd1f77e70c0226d99d6d2102870`  
		Last Modified: Thu, 20 Aug 2026 17:22:20 GMT  
		Size: 185.5 MB (185519218 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:26-alpine-full` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:6108edea2fadd91d4f302f31c51798379624d06581d4526116aaaffdbc310084
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **598.4 KB (598374 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73cf309d4283aa634db8e6fd5fa31b3e5298b2904ce38c6d810edd8be2c71a8a`

```dockerfile
```

-	Layers:
	-	`sha256:63d8ba0ebdc9a6acccf2439a096a62548f9013ffca683e712c76d30729eaa41d`  
		Last Modified: Thu, 20 Aug 2026 17:22:16 GMT  
		Size: 587.7 KB (587696 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ba4a3408600337bddf459824760a04af25524e3337fa2466d42af4d771d1540a`  
		Last Modified: Thu, 20 Aug 2026 17:22:16 GMT  
		Size: 10.7 KB (10678 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:26-alpine-full` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:567c258c6531ed0cfeda2fd9e0f49e0f7d9003152aad1daace23777541b3ab27
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.2 MB (187228019 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e1ad5e883e42e8ed9e6087eed312703d5c18e833ce8fff3ef039945ed5b6ff8`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Thu, 20 Aug 2026 17:18:41 GMT
ARG version=26.0.2.11.1
# Thu, 20 Aug 2026 17:18:41 GMT
# ARGS: version=26.0.2.11.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-26=$version-r0 &&     rm -rf /usr/lib/jvm/java-26-amazon-corretto/lib/src.zip # buildkit
# Thu, 20 Aug 2026 17:18:41 GMT
ENV LANG=C.UTF-8
# Thu, 20 Aug 2026 17:18:41 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 20 Aug 2026 17:18:41 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:014605c592d25c0600ada4d4bfe40607e21f9a9cacbe6ffad06545db75f51137`  
		Last Modified: Thu, 20 Aug 2026 17:19:02 GMT  
		Size: 183.0 MB (183044982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:26-alpine-full` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:ab21d13df61c03492be94eea4f9f724f647d673a2d3420b625969491c98bfb2c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **597.3 KB (597340 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92a727e7bcf90b45c9cdb7fb69eff334a09f0288b52772beb3d40760501a2f77`

```dockerfile
```

-	Layers:
	-	`sha256:3cdc5a5499a5eff5c7393d061b87ee0425971ef5f36fb174dd68ee2ec5302da6`  
		Last Modified: Thu, 20 Aug 2026 17:18:58 GMT  
		Size: 586.5 KB (586510 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0f52f6e488372bba7b3b8fe0645ee7e62fc51dac071b99bc1f339a08f1192550`  
		Last Modified: Thu, 20 Aug 2026 17:18:58 GMT  
		Size: 10.8 KB (10830 bytes)  
		MIME: application/vnd.in-toto+json
