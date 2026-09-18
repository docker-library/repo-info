## `amazoncorretto:8u504-alpine3.22-jre`

```console
$ docker pull amazoncorretto@sha256:89f6f1376d89f4b34d424b51e7137ee1a659369b2b6b942bdfbec373a0683e58
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
$ docker pull amazoncorretto@sha256:25201c09fe91c6ab22d9d31d4f7b6b1a0e49b661200ff14420b86857a320cb19
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.7 MB (45689748 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9aac7bab4928a4d8c477d3c46a39764eacb9670f7b078acfe3fe3aaf9347f175`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:30 GMT
ADD alpine-minirootfs-3.22.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:30 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:35:25 GMT
ARG version=8.504.01.1
# Thu, 17 Sep 2026 21:35:25 GMT
# ARGS: version=8.504.01.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8-jre=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Thu, 17 Sep 2026 21:35:25 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:35:25 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm/jre
```

-	Layers:
	-	`sha256:16fc4f52163f03cd2189c3d6a4b3f28a605cfb7919af64b3da4562cca69d2306`  
		Last Modified: Thu, 17 Sep 2026 20:37:36 GMT  
		Size: 4.1 MB (4123084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aad771a328238974be586d9d50e966f86c6aab5f641f70475bd4235b5a96fbbb`  
		Last Modified: Thu, 17 Sep 2026 21:35:35 GMT  
		Size: 41.6 MB (41566664 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8u504-alpine3.22-jre` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:1edab69125ecb1ec7c35ee4d5b1d4c35d764db1180cff56dd5ab47c90b7946ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.3 KB (197339 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a766d61684be7384a6dfbe17d5c0253896397196d6b70fe658c84e9a00247e9f`

```dockerfile
```

-	Layers:
	-	`sha256:f763faed291d255ccfb867f5f62244ca24a18ae37ff49cce8094e4dc6b1673ef`  
		Last Modified: Thu, 17 Sep 2026 21:35:33 GMT  
		Size: 188.6 KB (188603 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:08797304ac2a9562cd9ae0cd5a5a11a3386e779d5582c4e74a678c425800ab34`  
		Last Modified: Thu, 17 Sep 2026 21:35:33 GMT  
		Size: 8.7 KB (8736 bytes)  
		MIME: application/vnd.in-toto+json
