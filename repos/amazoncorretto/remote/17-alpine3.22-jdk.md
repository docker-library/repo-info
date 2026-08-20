## `amazoncorretto:17-alpine3.22-jdk`

```console
$ docker pull amazoncorretto@sha256:bac06f05c0e0d755e2b56b595f3944befad4fd04789d6f6d683fc41286eb8d9f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:17-alpine3.22-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:00444126fa1e14eb5ce65c6ec93d6c242326e0cf7455f81d9a5563dff886c23c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.7 MB (152728114 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d7f1afe6288f76c4f287ac8934dfd25c88c398ff88e7804fb4039823dfe9a5c`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.22.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Thu, 20 Aug 2026 17:20:14 GMT
ARG version=17.0.20.10.1
# Thu, 20 Aug 2026 17:20:14 GMT
# ARGS: version=17.0.20.10.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-17=$version-r0 &&     rm -rf /usr/lib/jvm/java-17-amazon-corretto/lib/src.zip # buildkit
# Thu, 20 Aug 2026 17:20:14 GMT
ENV LANG=C.UTF-8
# Thu, 20 Aug 2026 17:20:14 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 20 Aug 2026 17:20:14 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:f7ee36c9aa34bbb665f975c76e5c0d1607f0674b94c84cfb0061f87006ea5d10`  
		Last Modified: Mon, 22 Jun 2026 09:11:44 GMT  
		Size: 3.8 MB (3787595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f90e3f1e1e020f79a83df42b60a9445e55bf6dfa6b4a58d230d56d8a0416de8d`  
		Last Modified: Thu, 20 Aug 2026 17:20:32 GMT  
		Size: 148.9 MB (148940519 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-alpine3.22-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:c41ab301bf7b4415adb967bc99064e4929d295f68506cd820af95e967f974bd8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **593.2 KB (593170 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2e99cac5fedd21ee60b04f6d77687eb9ff64cb515dcb340ba249e077ca76b0c`

```dockerfile
```

-	Layers:
	-	`sha256:1c43fa5250a08068812e68cd10ec428ca30734221125187bd0ef8b316566bcde`  
		Last Modified: Thu, 20 Aug 2026 17:20:28 GMT  
		Size: 583.8 KB (583791 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b8152f8276c3f1b93a063bc4c9ce25a588262a6f81e79f1c70effe0cbbb76166`  
		Last Modified: Thu, 20 Aug 2026 17:20:28 GMT  
		Size: 9.4 KB (9379 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:17-alpine3.22-jdk` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:c0583b2c495d61f4c7102ac41aa1961f35cc4f8a264ca313719d9feef6617cf2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.5 MB (151481527 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff82643f5c1d903c93ad976d92eb07114f7644eb87848d8b96c348067ac57e17`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:11 GMT
ADD alpine-minirootfs-3.22.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:11 GMT
CMD ["/bin/sh"]
# Thu, 20 Aug 2026 17:16:59 GMT
ARG version=17.0.20.10.1
# Thu, 20 Aug 2026 17:16:59 GMT
# ARGS: version=17.0.20.10.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-17=$version-r0 &&     rm -rf /usr/lib/jvm/java-17-amazon-corretto/lib/src.zip # buildkit
# Thu, 20 Aug 2026 17:16:59 GMT
ENV LANG=C.UTF-8
# Thu, 20 Aug 2026 17:16:59 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 20 Aug 2026 17:16:59 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:738128faa30f570583b0e57efd831e0e6a2a9aacf1be88c8f4c1ef8a5b7033cc`  
		Last Modified: Mon, 22 Jun 2026 09:11:35 GMT  
		Size: 4.1 MB (4120486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d07b14a46b8afd0b66ab8cb5696d87ccc8c2dde059862f0efd65c928ae3acb6`  
		Last Modified: Thu, 20 Aug 2026 17:17:16 GMT  
		Size: 147.4 MB (147361041 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-alpine3.22-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:422e2f65a550463664398f6b0e75ede3e84a7ee7813e38a2d10fdb6cebf0b9ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **592.7 KB (592693 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9cd9c721ae3e34c837a305cac4e3e1e458ce401782c783a0a1dfbb5cbe4b88c2`

```dockerfile
```

-	Layers:
	-	`sha256:c8315c9998877958953f1ba5ee4374431e4d2b647639e045b99235a6f62df438`  
		Last Modified: Thu, 20 Aug 2026 17:17:13 GMT  
		Size: 583.2 KB (583210 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:38a514b9d8778784076c50553e5bbc5238269e8960fc952d4b00cb0a66a7635b`  
		Last Modified: Thu, 20 Aug 2026 17:17:14 GMT  
		Size: 9.5 KB (9483 bytes)  
		MIME: application/vnd.in-toto+json
