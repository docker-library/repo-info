## `amazoncorretto:25-alpine3.24-full`

```console
$ docker pull amazoncorretto@sha256:027310590da693629c2cf704d2f87e9359c33ee2f02bcaa777680b2f4b94f4c7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:25-alpine3.24-full` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:dc20d7066848919d19d2a7b5f1f4e2a48f8e32fc7328a5ae683d579bafa2f818
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.4 MB (185355734 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc4b20b05e2389fbc68a6c06de38b402cb319f1c4dfd229ad344b64d816df7c9`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Thu, 23 Jul 2026 23:13:10 GMT
ARG version=25.0.4.7.1
# Thu, 23 Jul 2026 23:13:10 GMT
# ARGS: version=25.0.4.7.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-25=$version-r0 &&     rm -rf /usr/lib/jvm/java-25-amazon-corretto/lib/src.zip # buildkit
# Thu, 23 Jul 2026 23:13:10 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 23:13:10 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 23 Jul 2026 23:13:10 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f382fb17f36d4f967673b95d602fb43b817f015d4fe0ff664e8c64ed20d7a08`  
		Last Modified: Thu, 23 Jul 2026 23:13:31 GMT  
		Size: 181.5 MB (181509343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:25-alpine3.24-full` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:b544e05a1c9b9e8b6120efc12b2bda69343b84d73fd473599ec9f1687a80ee2d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **603.6 KB (603554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3b84974900e7f9c607aa6c7db0bb1205911c183d16b59cf655e440ae9301f71`

```dockerfile
```

-	Layers:
	-	`sha256:d7f14be02c8360b5f381a5ed38aafc9b9599cdcee4dd37f3257ccf642ee4b931`  
		Last Modified: Thu, 23 Jul 2026 23:13:27 GMT  
		Size: 592.9 KB (592877 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f75d665526aa23a632fde3ffd055294b5a16bfeaa1f1f134a762453c55282829`  
		Last Modified: Thu, 23 Jul 2026 23:13:27 GMT  
		Size: 10.7 KB (10677 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:25-alpine3.24-full` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:12d67b744c43358b53983a86500843a79f01aa2e9042246d0cf51a897f1cdc32
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **183.3 MB (183264447 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:917127f1a96437299999bad8dddaa05385bd3ce15dd5cfb340c1c764f64a534f`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Thu, 23 Jul 2026 23:14:56 GMT
ARG version=25.0.4.7.1
# Thu, 23 Jul 2026 23:14:56 GMT
# ARGS: version=25.0.4.7.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-25=$version-r0 &&     rm -rf /usr/lib/jvm/java-25-amazon-corretto/lib/src.zip # buildkit
# Thu, 23 Jul 2026 23:14:56 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 23:14:56 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 23 Jul 2026 23:14:56 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:571917d07401fcfe1b538b9f36096638bcc49838511649757ffe415db2d4485a`  
		Last Modified: Thu, 23 Jul 2026 23:15:17 GMT  
		Size: 179.1 MB (179081410 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:25-alpine3.24-full` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:a5855bcab53d93f03140f7b4f0ff8083a03ab4322a89c92139cda674b8bb22c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **602.5 KB (602520 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:577ea6f5fd23bc1f69f1a19f4c1a79110eded2a17e23af1dd6bd577e3bae335b`

```dockerfile
```

-	Layers:
	-	`sha256:9180431deef006aef2ac0f1daaede00cbadea242dd2ec545c21a14bcadc8250b`  
		Last Modified: Thu, 23 Jul 2026 23:15:14 GMT  
		Size: 591.7 KB (591691 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0f36aa45a51dc18555751395473f9fb6fe4e8e20ac9e5b3577d39371a620a8d0`  
		Last Modified: Thu, 23 Jul 2026 23:15:13 GMT  
		Size: 10.8 KB (10829 bytes)  
		MIME: application/vnd.in-toto+json
