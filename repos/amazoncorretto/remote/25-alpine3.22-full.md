## `amazoncorretto:25-alpine3.22-full`

```console
$ docker pull amazoncorretto@sha256:7d93179da1c00e18ac3760c90f4ad1b7fc053cf358a6db29028fa5bb022d3043
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:25-alpine3.22-full` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:b51ddac45e10dc839683977752ca05c845670617a7263aee967a97f9b055dee2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.3 MB (185286887 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6217d92029ed42b7487b1e896c00c93fafca51209bf9cbd836aa4833eb894a6`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.22.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Thu, 20 Aug 2026 17:21:22 GMT
ARG version=25.0.4.8.1
# Thu, 20 Aug 2026 17:21:22 GMT
# ARGS: version=25.0.4.8.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-25=$version-r0 &&     rm -rf /usr/lib/jvm/java-25-amazon-corretto/lib/src.zip # buildkit
# Thu, 20 Aug 2026 17:21:22 GMT
ENV LANG=C.UTF-8
# Thu, 20 Aug 2026 17:21:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 20 Aug 2026 17:21:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:f7ee36c9aa34bbb665f975c76e5c0d1607f0674b94c84cfb0061f87006ea5d10`  
		Last Modified: Mon, 22 Jun 2026 09:11:44 GMT  
		Size: 3.8 MB (3787595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02fd148d0c1ba50ef4ae5a890796a76d93ea40df53a4168ecf553e84f6f0f619`  
		Last Modified: Thu, 20 Aug 2026 17:21:43 GMT  
		Size: 181.5 MB (181499292 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:25-alpine3.22-full` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:ddd0d3fe586ab361eb9631c5666af01a3dd69afb5b218219ccf1bde866421141
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **602.2 KB (602159 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b147df3477012b26a892f2a1537f663edcd1a583fa21570e9d6f871d5ded249d`

```dockerfile
```

-	Layers:
	-	`sha256:d4030469368b9a35a7ebe9d844d407050a77622821de5b884df76aba4bf8d2f4`  
		Last Modified: Thu, 20 Aug 2026 17:21:39 GMT  
		Size: 592.8 KB (592788 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ba223bc4cdb07c8457f54813a9789e4052bbb806647ea385ad379c5d8056f98b`  
		Last Modified: Thu, 20 Aug 2026 17:21:39 GMT  
		Size: 9.4 KB (9371 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:25-alpine3.22-full` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:d2a1045a3fb9131a275add57cd5ca3e3ae521f74d8133ca149dfc15d1154d79b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **183.2 MB (183191947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d26fde02808d8bba5ff243f1f07a1629e2dc71693a06d34f60a234945b731ed7`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:11 GMT
ADD alpine-minirootfs-3.22.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:11 GMT
CMD ["/bin/sh"]
# Thu, 20 Aug 2026 17:18:07 GMT
ARG version=25.0.4.8.1
# Thu, 20 Aug 2026 17:18:07 GMT
# ARGS: version=25.0.4.8.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-25=$version-r0 &&     rm -rf /usr/lib/jvm/java-25-amazon-corretto/lib/src.zip # buildkit
# Thu, 20 Aug 2026 17:18:07 GMT
ENV LANG=C.UTF-8
# Thu, 20 Aug 2026 17:18:07 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 20 Aug 2026 17:18:07 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:738128faa30f570583b0e57efd831e0e6a2a9aacf1be88c8f4c1ef8a5b7033cc`  
		Last Modified: Mon, 22 Jun 2026 09:11:35 GMT  
		Size: 4.1 MB (4120486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9658933be0090abdf036da55b58b4dcaa26f2c9ae64f1afd3b5f50791152ab3`  
		Last Modified: Thu, 20 Aug 2026 17:18:28 GMT  
		Size: 179.1 MB (179071461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:25-alpine3.22-full` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:3ac36c04124f667c376f551ee8631f90ec94d706240a4c90f7f188e2be942cea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **601.7 KB (601678 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d3e26b7ad75c2c63625bf5f6e332e1e7adbfa238867016e50664eb6b8d72c1b`

```dockerfile
```

-	Layers:
	-	`sha256:bbee25053bc11b15e561d4b48795126a9679803f68aa9c1e2d2ef8f6f9307e09`  
		Last Modified: Thu, 20 Aug 2026 17:18:24 GMT  
		Size: 592.2 KB (592204 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4b9b3dab2c227ea3435a1b08cd95d7b1bc7d64d271126d174e6fd86a5ab620e8`  
		Last Modified: Thu, 20 Aug 2026 17:18:24 GMT  
		Size: 9.5 KB (9474 bytes)  
		MIME: application/vnd.in-toto+json
