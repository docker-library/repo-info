## `amazoncorretto:8u504-alpine3.22-jre`

```console
$ docker pull amazoncorretto@sha256:e2347d4374051911ae84166f6544cd902740eaf6c0d53047f1e69d0eded4546f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; arm64 variant v8
	-	unknown; unknown

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
