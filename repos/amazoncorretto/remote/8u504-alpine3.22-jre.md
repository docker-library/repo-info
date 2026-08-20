## `amazoncorretto:8u504-alpine3.22-jre`

```console
$ docker pull amazoncorretto@sha256:d687effcc1e208e496970e5df38de5564061eb18ffedfd61cfdcc43fee63f6d3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:8u504-alpine3.22-jre` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:3e6175d513383567db6574107198606bb8f81385ae62dc57f8c042486dafc033
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.6 MB (45599617 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93cf3ca27d4be483d6caf67d954cc52cf3ad47883d3080b7fca681b1f29e80a7`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.22.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Thu, 20 Aug 2026 17:18:53 GMT
ARG version=8.504.01.1
# Thu, 20 Aug 2026 17:18:53 GMT
# ARGS: version=8.504.01.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8-jre=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Thu, 20 Aug 2026 17:18:53 GMT
ENV LANG=C.UTF-8
# Thu, 20 Aug 2026 17:18:53 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm/jre
```

-	Layers:
	-	`sha256:f7ee36c9aa34bbb665f975c76e5c0d1607f0674b94c84cfb0061f87006ea5d10`  
		Last Modified: Mon, 22 Jun 2026 09:11:44 GMT  
		Size: 3.8 MB (3787595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f005ddf51a5c05a8bb3c5bc2ec3abd9433ff98cdf190c32420fe35bdcf0a695`  
		Last Modified: Thu, 20 Aug 2026 17:19:03 GMT  
		Size: 41.8 MB (41812022 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8u504-alpine3.22-jre` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:34906cb96283346f22b42a3457fe581ec3969a1af5dfb60ac63757169de71f50
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.2 KB (197151 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96e53e2e0bfbfab238d735fd3ad75f623417907a876021fc227762964ad0896a`

```dockerfile
```

-	Layers:
	-	`sha256:8b93ebb9dc4d2d57d3a7181e4eb829cca427751e559035d8e9bb5390a8f34915`  
		Last Modified: Thu, 20 Aug 2026 17:19:02 GMT  
		Size: 188.5 KB (188495 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0072dd92293f2310a7db1e3cc57d2a2f9419f1c5a7c2ee3868cfc3a76fd6fc37`  
		Last Modified: Thu, 20 Aug 2026 17:19:02 GMT  
		Size: 8.7 KB (8656 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:8u504-alpine3.22-jre` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:56c26753c4de61a40b855cf624c1d2060e5299ade853dfa90d15b5ec3ee3173b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.7 MB (45687195 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6dd7266718e77d8e77608e45460556df1b39d25e017809d87f031154e6e7006`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:11 GMT
ADD alpine-minirootfs-3.22.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:11 GMT
CMD ["/bin/sh"]
# Thu, 20 Aug 2026 17:15:37 GMT
ARG version=8.504.01.1
# Thu, 20 Aug 2026 17:15:37 GMT
# ARGS: version=8.504.01.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8-jre=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Thu, 20 Aug 2026 17:15:37 GMT
ENV LANG=C.UTF-8
# Thu, 20 Aug 2026 17:15:37 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm/jre
```

-	Layers:
	-	`sha256:738128faa30f570583b0e57efd831e0e6a2a9aacf1be88c8f4c1ef8a5b7033cc`  
		Last Modified: Mon, 22 Jun 2026 09:11:35 GMT  
		Size: 4.1 MB (4120486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ecbf40700c62c8531540fb03d4b54d06284cfbd1e85d5cde9927a947f802249`  
		Last Modified: Thu, 20 Aug 2026 17:15:47 GMT  
		Size: 41.6 MB (41566709 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8u504-alpine3.22-jre` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:3ef17e5723476b37d966d96448134ecadfa023ac60edd3dc28968ec955609dff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.3 KB (197339 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d85aaa133a77384fd4194a863a4ef6f2a20e4e71d0ed625635648502119ed1d`

```dockerfile
```

-	Layers:
	-	`sha256:322df27a2056348c0af7a12688b032e026bfccf110a638cdf3d771f02584bb04`  
		Last Modified: Thu, 20 Aug 2026 17:15:46 GMT  
		Size: 188.6 KB (188603 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c38f7e5cae6a28ca5867155cef33e5faf6ff4492a4efa6e97ed743a3436aefee`  
		Last Modified: Thu, 20 Aug 2026 17:15:46 GMT  
		Size: 8.7 KB (8736 bytes)  
		MIME: application/vnd.in-toto+json
