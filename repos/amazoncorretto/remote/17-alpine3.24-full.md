## `amazoncorretto:17-alpine3.24-full`

```console
$ docker pull amazoncorretto@sha256:e1138bf0cca62e04692de650ffe8923f35c39fcb554458c7acd98efc2d135144
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:17-alpine3.24-full` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:67546ab389ec51aa479112c861f995b23e88cdffb84708c1f739859eb7c8c5ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.8 MB (152805382 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce23f6644e005e69a2dee1a4a7f9f072bd68b6024798f9d64ac6e947e8bed061`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Thu, 23 Jul 2026 23:12:16 GMT
ARG version=17.0.20.8.1
# Thu, 23 Jul 2026 23:12:16 GMT
# ARGS: version=17.0.20.8.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-17=$version-r0 &&     rm -rf /usr/lib/jvm/java-17-amazon-corretto/lib/src.zip # buildkit
# Thu, 23 Jul 2026 23:12:16 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 23:12:16 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 23 Jul 2026 23:12:16 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d27e94e76fff4b78747bfbd72ea73dee354f8a8f818401a3807fed3574eb38ef`  
		Last Modified: Thu, 23 Jul 2026 23:12:33 GMT  
		Size: 149.0 MB (148958991 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-alpine3.24-full` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:cefe5f4def4e38e573ff662702ab2bda4d8ecde65eaf441e7f5517eddd564ab0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **594.6 KB (594561 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a26160ea20cc0bf44b46dedaa2d1ffdeea0dc8c888dd62f5460325c86892c4bd`

```dockerfile
```

-	Layers:
	-	`sha256:604301b0bae3dbd23fccbb3d0076e8119dfb800bf041b345d8d89ba75e79fd53`  
		Last Modified: Thu, 23 Jul 2026 23:12:30 GMT  
		Size: 583.9 KB (583880 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:989ece223a3262717c78d79ee7c7e4944ab8c04f3341b6951d364c34a60b593c`  
		Last Modified: Thu, 23 Jul 2026 23:12:30 GMT  
		Size: 10.7 KB (10681 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:17-alpine3.24-full` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:f9d316fbe3d31703d2ba23dcf2521f8040511b48a858dd0ea2071295b00eefc5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.6 MB (151556712 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a31473330fce0b44b692e1d7ac66a0d237bf96a9f8fccf3412927a1b351b7ed`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Thu, 23 Jul 2026 23:13:59 GMT
ARG version=17.0.20.8.1
# Thu, 23 Jul 2026 23:13:59 GMT
# ARGS: version=17.0.20.8.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-17=$version-r0 &&     rm -rf /usr/lib/jvm/java-17-amazon-corretto/lib/src.zip # buildkit
# Thu, 23 Jul 2026 23:13:59 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 23:13:59 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 23 Jul 2026 23:13:59 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:384d46bc345dbea4c44bfc14d27a3af5b9da7e0be8e75579442fad22ef885abf`  
		Last Modified: Thu, 23 Jul 2026 23:14:17 GMT  
		Size: 147.4 MB (147373675 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-alpine3.24-full` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:273054bbc9e55baaa5e0a37c6164e50976cd6104f093807f9742ff9fde6d03b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **593.5 KB (593531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4444f362dd4475165e25d0fcaab52836d687bf3fbd4aba92de3f635e01f3e2b`

```dockerfile
```

-	Layers:
	-	`sha256:dc0e5b588558011c4c8930f36c97228046f941f0acd9f50acb6f3c20c662785e`  
		Last Modified: Thu, 23 Jul 2026 23:14:14 GMT  
		Size: 582.7 KB (582697 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c7585c1601fc7306284ece9b4e13aa2eef13c9ce73dbe2cc147d67fa0f15e568`  
		Last Modified: Thu, 23 Jul 2026 23:14:14 GMT  
		Size: 10.8 KB (10834 bytes)  
		MIME: application/vnd.in-toto+json
