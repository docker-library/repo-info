## `amazoncorretto:25-alpine-jdk`

```console
$ docker pull amazoncorretto@sha256:4955796538972099d9c7de6e31c6a259b1de65393a58b7e0996b7cc50d7d20a7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:25-alpine-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:704a3f0573ddd5b6d619b6e79cad67b92ac5772a8fd451b246486f5a9aa111f6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.4 MB (185370926 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7932751a39d49e75dc45fb07231e32e2b11a9080edd22f1cb21c625cfddbeaf4`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:36:54 GMT
ARG version=25.0.4.8.1
# Thu, 17 Sep 2026 21:36:54 GMT
# ARGS: version=25.0.4.8.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-25=$version-r0 &&     rm -rf /usr/lib/jvm/java-25-amazon-corretto/lib/src.zip # buildkit
# Thu, 17 Sep 2026 21:36:54 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:36:54 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 17 Sep 2026 21:36:54 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ddb48521ba8fc68428e52a672053957d88c811c8c76c2639b193430a84db863`  
		Last Modified: Thu, 17 Sep 2026 21:37:15 GMT  
		Size: 181.5 MB (181521188 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:25-alpine-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:52a5e207a23acd70c7d8a12a3e165739e53b3c646074a9bd90962ba3ea1da977
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **603.6 KB (603558 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a25e2e3fff4d50292196ee6d100cd38d0f31322896401d54e9225f7329ded08`

```dockerfile
```

-	Layers:
	-	`sha256:9e6dfe2182f25bb89644c98315939a1d01f3183a1e3f830efe87811e0c2803dc`  
		Last Modified: Thu, 17 Sep 2026 21:37:11 GMT  
		Size: 592.9 KB (592881 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d183dc4573d8e2d0195f2613f8230194b32b6d31937e4aa1e4a817a401fff203`  
		Last Modified: Thu, 17 Sep 2026 21:37:11 GMT  
		Size: 10.7 KB (10677 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:25-alpine-jdk` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:e71513bacf26373bc53bb3d98d83aff96435195069f93ce66c3f6bfa0452e66d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **183.3 MB (183276032 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3741689b90f1db8eccbae6a5704f32822421404532343420bc9995ec1254f95`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:37:47 GMT
ARG version=25.0.4.8.1
# Thu, 17 Sep 2026 21:37:47 GMT
# ARGS: version=25.0.4.8.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-25=$version-r0 &&     rm -rf /usr/lib/jvm/java-25-amazon-corretto/lib/src.zip # buildkit
# Thu, 17 Sep 2026 21:37:47 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:37:47 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 17 Sep 2026 21:37:47 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:319c8775bc3edad66aee6ace572ce851d3f6a0219ef6239b2f8f293284559bec`  
		Last Modified: Thu, 17 Sep 2026 21:38:08 GMT  
		Size: 179.1 MB (179088373 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:25-alpine-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:dc9b29c1fe8c69f462f1c13a76e17bc676dfc4e02e32d7ccd59052ec9f12f30e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **602.5 KB (602524 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d951673d357e2b25fbd7e98a029d794a02659860ef04934a435323a6dbc0423`

```dockerfile
```

-	Layers:
	-	`sha256:371b0a4066e252e1a4470ed0dbf17fe9872cc8d69440fb825139947915c2ea2f`  
		Last Modified: Thu, 17 Sep 2026 21:38:04 GMT  
		Size: 591.7 KB (591695 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e459e6a0b9c2f72bb67138316e037b96bdcce439523e4cd2572c433ea0babc5d`  
		Last Modified: Thu, 17 Sep 2026 21:38:04 GMT  
		Size: 10.8 KB (10829 bytes)  
		MIME: application/vnd.in-toto+json
