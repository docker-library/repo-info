## `amazoncorretto:27-alpine3.21-jdk`

```console
$ docker pull amazoncorretto@sha256:439ea82264ef41298efecef27ac27b8c2e8bf998083134c98eb3ab8f94b96847
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:27-alpine3.21-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:58ca65974ff69b1a30301811196c463a86b25d4fa0843f8341ffc291087e5a6a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.0 MB (187018204 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c922a136f0eaa4f69522b619656719de315c9af5ca5e5f717842fe4399634a5e`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 16 Apr 2026 23:53:15 GMT
ADD alpine-minirootfs-3.21.7-x86_64.tar.gz / # buildkit
# Thu, 16 Apr 2026 23:53:15 GMT
CMD ["/bin/sh"]
# Wed, 16 Sep 2026 23:39:45 GMT
ARG version=27.0.0.35.1
# Wed, 16 Sep 2026 23:39:45 GMT
# ARGS: version=27.0.0.35.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-27=$version-r0 &&     rm -rf /usr/lib/jvm/java-27-amazon-corretto/lib/src.zip # buildkit
# Wed, 16 Sep 2026 23:39:45 GMT
ENV LANG=C.UTF-8
# Wed, 16 Sep 2026 23:39:45 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Wed, 16 Sep 2026 23:39:45 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:897d797d2723cf0e318402f4d6f37d51b011517e5cf09246b22155f0fa90dc81`  
		Last Modified: Thu, 16 Apr 2026 05:32:55 GMT  
		Size: 3.6 MB (3646875 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:401d8fee47630c486175203f939a3d69761d0d2f3bea1561765982c2ae9965d6`  
		Last Modified: Wed, 16 Sep 2026 23:40:05 GMT  
		Size: 183.4 MB (183371329 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:27-alpine3.21-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:8fe77775510c12b3f20655120364358dbb72296f5e4e07c107b06df8e8c04259
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **591.0 KB (590968 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb1230afe647eca6891d61e1d46fbc102ec2a6af8a538f051cf483583c75a3f3`

```dockerfile
```

-	Layers:
	-	`sha256:934df71aae7cf97a97a146133b114807778b0589b438621e5ee573c67a8441b2`  
		Last Modified: Wed, 16 Sep 2026 23:40:01 GMT  
		Size: 581.6 KB (581596 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:45c085014e3c322a1cc6a6405f92df7c5513e5db7e79b9e757958cdc4a9c1912`  
		Last Modified: Wed, 16 Sep 2026 23:40:01 GMT  
		Size: 9.4 KB (9372 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:27-alpine3.21-jdk` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:d7e9feea919ee9c559cb6b258e968b8a69c1d16045cedebac0d8d602b65b46ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.0 MB (184967203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fd44122b8f1dd7353318add9c2c30a762584a7138369b85e62b76a93d523951`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:38:00 GMT
ADD alpine-minirootfs-3.21.8-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:38:00 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:38:41 GMT
ARG version=27.0.0.35.1
# Thu, 17 Sep 2026 21:38:41 GMT
# ARGS: version=27.0.0.35.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-27=$version-r0 &&     rm -rf /usr/lib/jvm/java-27-amazon-corretto/lib/src.zip # buildkit
# Thu, 17 Sep 2026 21:38:41 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:38:41 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 17 Sep 2026 21:38:41 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:248d4d6535e8932d2b51acdf49a4ca8d87629cd408a02bd59788b4c31e3d0c28`  
		Last Modified: Thu, 17 Sep 2026 20:38:06 GMT  
		Size: 4.0 MB (3974501 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75e9eb26b7aa76ec648a9493f7d0cc6a5da9fdff7b529da0a9dc138e1d3b9a67`  
		Last Modified: Thu, 17 Sep 2026 21:39:02 GMT  
		Size: 181.0 MB (180992702 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:27-alpine3.21-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:0f45fa50bb61e6ac4e27f66b465edda430bc8673679569b2a92257dd90899357
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **590.5 KB (590488 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69920b26e7069d7c2b32767603a7f2c768c26fb5ac264c18d8db2de783eaef2f`

```dockerfile
```

-	Layers:
	-	`sha256:f66fa9597d65fedc1197e75e4fde9e91272649bf15d3711f73e54cc01da32041`  
		Last Modified: Thu, 17 Sep 2026 21:38:58 GMT  
		Size: 581.0 KB (581012 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:87d365a781c1b85fb2fe5c1a1a86b322eccfa8d208b7c7b11c49266fe6ff23b7`  
		Last Modified: Thu, 17 Sep 2026 21:38:58 GMT  
		Size: 9.5 KB (9476 bytes)  
		MIME: application/vnd.in-toto+json
