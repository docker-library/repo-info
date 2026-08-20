## `amazoncorretto:25-alpine-full`

```console
$ docker pull amazoncorretto@sha256:2ad5f5cf03a3970f2478b130dc28f51b179ce13c58154fe3ec1a6fdeb3b86e3a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:25-alpine-full` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:0c3abaaf3dbde7e191b7cb0853502dbaa905f4429ea0b4d84139c048f3160e40
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.4 MB (185367926 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8610d402520b5acc983862cf39acfc54fcab55dd77ddb6c8c7553405f6cdb7f8`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Thu, 20 Aug 2026 17:47:44 GMT
ARG version=25.0.4.8.1
# Thu, 20 Aug 2026 17:47:44 GMT
# ARGS: version=25.0.4.8.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-25=$version-r0 &&     rm -rf /usr/lib/jvm/java-25-amazon-corretto/lib/src.zip # buildkit
# Thu, 20 Aug 2026 17:47:44 GMT
ENV LANG=C.UTF-8
# Thu, 20 Aug 2026 17:47:44 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 20 Aug 2026 17:47:44 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e1936334c7260e8b102923223a3f68ef189e93a7cbe0110ca22699ec402ba8d`  
		Last Modified: Thu, 20 Aug 2026 17:48:04 GMT  
		Size: 181.5 MB (181521535 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:25-alpine-full` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:90ca1871f7ff3b9f00ce777c8cae2d624edfc0acc4dcaf9bc8125e48da68a833
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **603.6 KB (603558 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25b5239340551e2c3b6c7b31c7391245830f1d1b6327da5373a0083c834f57fc`

```dockerfile
```

-	Layers:
	-	`sha256:729d147478b6959cfbd62b92523b00e65a688408c26520bd0a570e2dbc51ec7b`  
		Last Modified: Thu, 20 Aug 2026 17:48:00 GMT  
		Size: 592.9 KB (592881 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2e7b2ade060a3d3795f73579b98718e65be22243f4f7859a82c92555ad63622d`  
		Last Modified: Thu, 20 Aug 2026 17:47:59 GMT  
		Size: 10.7 KB (10677 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:25-alpine-full` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:75272c88d9a35ded61823ec26f0ca57be5384a16019aeadd934636d93c13c722
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **183.3 MB (183271457 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9a8badda745bd4669605c0ad362730e0320aecfb9711a8c859c8d7ce5054cfc`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Thu, 20 Aug 2026 17:18:13 GMT
ARG version=25.0.4.8.1
# Thu, 20 Aug 2026 17:18:13 GMT
# ARGS: version=25.0.4.8.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-25=$version-r0 &&     rm -rf /usr/lib/jvm/java-25-amazon-corretto/lib/src.zip # buildkit
# Thu, 20 Aug 2026 17:18:13 GMT
ENV LANG=C.UTF-8
# Thu, 20 Aug 2026 17:18:13 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 20 Aug 2026 17:18:13 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35dab62182780b93fddf3b62a36a552c9d1485716f52b23c0d97db71b10cbb55`  
		Last Modified: Thu, 20 Aug 2026 17:18:34 GMT  
		Size: 179.1 MB (179088420 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:25-alpine-full` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:e83fa6b67fbb1b8de2080153dc70e4aba0a6e408369c64c5a70a1c3da3552aef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **602.5 KB (602524 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df4451e0cd805b104df08b86b4bca8d7c8e9164dc02aa1d8138f776c60c063c8`

```dockerfile
```

-	Layers:
	-	`sha256:4a3fb8eeaed623f62dc9fec8876114e566e67fef4a31cb77c9a14ac8d4b6c3c4`  
		Last Modified: Thu, 20 Aug 2026 17:18:30 GMT  
		Size: 591.7 KB (591695 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4f9d6b6eab4cec20693eb7b9d600d98c503b88de3ff8edd2e15f8dd1bd156b20`  
		Last Modified: Thu, 20 Aug 2026 17:18:30 GMT  
		Size: 10.8 KB (10829 bytes)  
		MIME: application/vnd.in-toto+json
