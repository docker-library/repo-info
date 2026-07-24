## `amazoncorretto:8u502-alpine3.21-jre`

```console
$ docker pull amazoncorretto@sha256:18d14ab5d4c0768b26997a832b39394512acd60256aa07797d1211b2afedff1f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:8u502-alpine3.21-jre` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:968fd15c6a62cb94015b210494b1bb261d1de1d212a45d4da2276aa602331dac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.5 MB (45465043 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d10e41a31867839231d4877fc0b2b0d3a2a2497368ebc0eef31a7b6af069527a`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 16 Apr 2026 23:53:15 GMT
ADD alpine-minirootfs-3.21.7-x86_64.tar.gz / # buildkit
# Thu, 16 Apr 2026 23:53:15 GMT
CMD ["/bin/sh"]
# Thu, 23 Jul 2026 23:10:32 GMT
ARG version=8.502.07.1
# Thu, 23 Jul 2026 23:10:32 GMT
# ARGS: version=8.502.07.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8-jre=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Thu, 23 Jul 2026 23:10:32 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 23:10:32 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm/jre
```

-	Layers:
	-	`sha256:897d797d2723cf0e318402f4d6f37d51b011517e5cf09246b22155f0fa90dc81`  
		Last Modified: Thu, 16 Apr 2026 05:32:55 GMT  
		Size: 3.6 MB (3646875 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b75b39b86f914900f7ef3bdcea535dbb30f4001a37858a31e7056ffe41b2c35`  
		Last Modified: Thu, 23 Jul 2026 23:10:42 GMT  
		Size: 41.8 MB (41818168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8u502-alpine3.21-jre` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:e6768d3cebdc02d4483e14ac5cbbd5bc2d29fe1f43eae7419fcee828b2d08970
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.4 KB (197381 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:baa37677c9aa8b197fba26232667715926037e65573f507221a7c3434ea99f80`

```dockerfile
```

-	Layers:
	-	`sha256:7245ed435d81b19aaaf2b9df1cb682237c843344ae7392b6169299ac245ec0da`  
		Last Modified: Thu, 23 Jul 2026 23:10:41 GMT  
		Size: 188.7 KB (188725 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d6186401cf38da18049eff4ed03e503b080749bf4019dd471ff12af7fecc9159`  
		Last Modified: Thu, 23 Jul 2026 23:10:40 GMT  
		Size: 8.7 KB (8656 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:8u502-alpine3.21-jre` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:de0c0e441c1afefa790cec74bac3f7e2a13922e524ef095636bbd9f60ea82fd5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.6 MB (45562257 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6fa2bf50dd8eb125a179fec6b2220da7e94d7a331c44dbe48564d8b9a86e444`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 16 Apr 2026 23:53:13 GMT
ADD alpine-minirootfs-3.21.7-aarch64.tar.gz / # buildkit
# Thu, 16 Apr 2026 23:53:13 GMT
CMD ["/bin/sh"]
# Thu, 23 Jul 2026 23:12:16 GMT
ARG version=8.502.07.1
# Thu, 23 Jul 2026 23:12:16 GMT
# ARGS: version=8.502.07.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8-jre=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Thu, 23 Jul 2026 23:12:16 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 23:12:16 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm/jre
```

-	Layers:
	-	`sha256:2dd7199cff98a7400e801cbfad6de906972a4e3dd0a749d4c1b80f5a1e3e4108`  
		Last Modified: Thu, 16 Apr 2026 05:32:50 GMT  
		Size: 4.0 MB (3994465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:319c88247f9406d1441279cc5d69119bd9e071ad6f080d8fc7b070a664ad0593`  
		Last Modified: Thu, 23 Jul 2026 23:12:26 GMT  
		Size: 41.6 MB (41567792 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8u502-alpine3.21-jre` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:965ba2bd615e3e38bbcbf54db9eaffd64e7786c062a6556e04a5d61ae9e33a8e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.6 KB (197568 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c614f9833b062aebc067cd633ef6e4b1d9b90264f0cf373f622e346309ad11ef`

```dockerfile
```

-	Layers:
	-	`sha256:55651a5da87a8a09ac068bd781284bc2ef5e6e5f33e836b3734749cb928e572a`  
		Last Modified: Thu, 23 Jul 2026 23:12:25 GMT  
		Size: 188.8 KB (188833 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d82856ccbe594ea41afa2ecdbbd208d59bfc31fc166c4961d37dd492789b01fd`  
		Last Modified: Thu, 23 Jul 2026 23:12:25 GMT  
		Size: 8.7 KB (8735 bytes)  
		MIME: application/vnd.in-toto+json
