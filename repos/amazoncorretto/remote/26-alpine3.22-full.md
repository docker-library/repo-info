## `amazoncorretto:26-alpine3.22-full`

```console
$ docker pull amazoncorretto@sha256:15d728e5f5f68881fd5654c379b4a77744a3d2847cecd18c985d5cfaa90218df
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:26-alpine3.22-full` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:2dde9d29d2b292a121d808646b03e00e28eaa06d35f33445c4659dedad5f65e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.3 MB (189285076 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ff258776d7b8ce24b53c7f0a95af7bbdec71230edf1418bd09a921891a662d3`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.22.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Thu, 23 Jul 2026 23:13:36 GMT
ARG version=26.0.2.10.1
# Thu, 23 Jul 2026 23:13:36 GMT
# ARGS: version=26.0.2.10.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-26=$version-r0 &&     rm -rf /usr/lib/jvm/java-26-amazon-corretto/lib/src.zip # buildkit
# Thu, 23 Jul 2026 23:13:36 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 23:13:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 23 Jul 2026 23:13:36 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:f7ee36c9aa34bbb665f975c76e5c0d1607f0674b94c84cfb0061f87006ea5d10`  
		Last Modified: Mon, 22 Jun 2026 09:11:44 GMT  
		Size: 3.8 MB (3787595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2476101d6a6b56deea79122e4d45afdb425ab52923d71a24eec7b7ec0a49fdd`  
		Last Modified: Thu, 23 Jul 2026 23:13:57 GMT  
		Size: 185.5 MB (185497481 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:26-alpine3.22-full` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:4a68e96f175087ea06397a55d61c23f8a077782dd2e99835cafe83bd1189d374
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **597.0 KB (596971 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89695a1bd09236a4ff1822fbc81ae17a16a71b2ce917af255edacee9780d500c`

```dockerfile
```

-	Layers:
	-	`sha256:b27b9f887d272611c7a73a51ede567302591741427f65513fe2ef1a382c664f6`  
		Last Modified: Thu, 23 Jul 2026 23:13:53 GMT  
		Size: 587.6 KB (587599 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8dfa5f473c90d40b620ebc4e247b20b41ec36d815dbe9165e053f4932818c371`  
		Last Modified: Thu, 23 Jul 2026 23:13:53 GMT  
		Size: 9.4 KB (9372 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:26-alpine3.22-full` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:a51d301093a0199b0cd3cde7ec14a48cbcc4f8dd2dc8e1373ab4d94f9e3b4392
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.1 MB (187145188 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64a268169165539b0fa08d8c5914ee60cd6fd2266f9868b55f408a15227492e7`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:11 GMT
ADD alpine-minirootfs-3.22.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:11 GMT
CMD ["/bin/sh"]
# Thu, 23 Jul 2026 23:15:20 GMT
ARG version=26.0.2.10.1
# Thu, 23 Jul 2026 23:15:20 GMT
# ARGS: version=26.0.2.10.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-26=$version-r0 &&     rm -rf /usr/lib/jvm/java-26-amazon-corretto/lib/src.zip # buildkit
# Thu, 23 Jul 2026 23:15:20 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 23:15:20 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 23 Jul 2026 23:15:20 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:738128faa30f570583b0e57efd831e0e6a2a9aacf1be88c8f4c1ef8a5b7033cc`  
		Last Modified: Mon, 22 Jun 2026 09:11:35 GMT  
		Size: 4.1 MB (4120486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57806d0ae7143fa4fdb5e2f105f8544c7416d4ce56b380858f8dc8fdbc3a43f2`  
		Last Modified: Thu, 23 Jul 2026 23:15:42 GMT  
		Size: 183.0 MB (183024702 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:26-alpine3.22-full` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:b369197744f3d3452c0989a7b3fc4264ef50857bdb67276cceb8a13c61248998
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **596.5 KB (596491 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a395ccab6cb9d48067d6cd1859aba65629cf412d94a14c87d0da5f2d053068b`

```dockerfile
```

-	Layers:
	-	`sha256:a05d14c7a988276a9f33858054fd872a01eac3747e48be16288b5b69a377d8c9`  
		Last Modified: Thu, 23 Jul 2026 23:15:38 GMT  
		Size: 587.0 KB (587015 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0d806d0a92811190d772ec4fba4755328af943f5f88a89eaa09745be688f1c76`  
		Last Modified: Thu, 23 Jul 2026 23:15:38 GMT  
		Size: 9.5 KB (9476 bytes)  
		MIME: application/vnd.in-toto+json
