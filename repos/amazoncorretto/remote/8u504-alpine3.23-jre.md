## `amazoncorretto:8u504-alpine3.23-jre`

```console
$ docker pull amazoncorretto@sha256:487647162697714bb597ee79364af1fe98374fe0bbdb3e2f32cf09c37cc42151
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:8u504-alpine3.23-jre` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:dbf5612d1d9da8f8c953513f73378c77c82db7f9c67def29d6f372d08b805496
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.7 MB (45666300 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae836d8d11e763ffeb3f9ccb5181d7c9520f79943361736570480c8ab9bfffb3`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:33 GMT
ADD alpine-minirootfs-3.23.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:33 GMT
CMD ["/bin/sh"]
# Mon, 05 Oct 2026 21:36:11 GMT
ARG version=8.504.04.1
# Mon, 05 Oct 2026 21:36:11 GMT
# ARGS: version=8.504.04.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8-jre=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Mon, 05 Oct 2026 21:36:11 GMT
ENV LANG=C.UTF-8
# Mon, 05 Oct 2026 21:36:11 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm/jre
```

-	Layers:
	-	`sha256:d0c1d894c237d8192cbcd37e435031ad4eddec173299568a5a05869c2e40dfa3`  
		Last Modified: Thu, 17 Sep 2026 20:37:37 GMT  
		Size: 3.8 MB (3848507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:127ebff2a560bdec3357a4f2d14236a5bc08e7c6a7fbc3bb1a3e635daaf24894`  
		Last Modified: Mon, 05 Oct 2026 21:36:21 GMT  
		Size: 41.8 MB (41817793 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8u504-alpine3.23-jre` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:5bcc1578f9b62e7b05067bab7473bbb694cc3e95475edcd05fd2e706d91f30e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **195.9 KB (195867 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c199d56aab68c39f200ed620bf57fc9c009427fcae5998804379d55d8a0def30`

```dockerfile
```

-	Layers:
	-	`sha256:fe5155d6e61a492658673430d41c792cd543ee8bb7da353b69cb0982d8b6bdf9`  
		Last Modified: Mon, 05 Oct 2026 21:36:20 GMT  
		Size: 187.2 KB (187211 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:46b93eec0d9f303b4b2f10e413015c86ea1bf5d3e0e99e023f0d84a6b20b50ea`  
		Last Modified: Mon, 05 Oct 2026 21:36:20 GMT  
		Size: 8.7 KB (8656 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:8u504-alpine3.23-jre` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:2055f9871ed400eab123ce533ef8012433cc472285e92988c966660bd9775c40
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.8 MB (45761404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a309b47f1f2baff1de95528dcb1f314d41ca2b624f51a3aba56f25818ef7568`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:18 GMT
ADD alpine-minirootfs-3.23.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:18 GMT
CMD ["/bin/sh"]
# Mon, 05 Oct 2026 21:41:48 GMT
ARG version=8.504.04.1
# Mon, 05 Oct 2026 21:41:48 GMT
# ARGS: version=8.504.04.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8-jre=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Mon, 05 Oct 2026 21:41:48 GMT
ENV LANG=C.UTF-8
# Mon, 05 Oct 2026 21:41:48 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm/jre
```

-	Layers:
	-	`sha256:ace1621be7ff15b54252f68393ac33181df7f3e095e36a5d9a9892031b357d31`  
		Last Modified: Thu, 17 Sep 2026 20:37:23 GMT  
		Size: 4.2 MB (4186056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17d8b62b52cfe8a135a9bf8c1cf0757a7dee564cffbd79bf4b0ac5e96d6ca086`  
		Last Modified: Mon, 05 Oct 2026 21:41:58 GMT  
		Size: 41.6 MB (41575348 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8u504-alpine3.23-jre` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:ae2068464f42accd048902e8be916c4318ec5d24774d2e7ab3121716d996e6f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **195.4 KB (195405 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de7437572037d93916d4f147c17bdd41842a45a4b9b23f3e40ea6a7ddedcc6b7`

```dockerfile
```

-	Layers:
	-	`sha256:f52fcf7e64c68807df47e581ce6fc6b32f390c5b5d78f35ab9c0c4256e1460bc`  
		Last Modified: Mon, 05 Oct 2026 21:41:57 GMT  
		Size: 186.7 KB (186669 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:39923f7ca606b128e621e324f03f8e77f7dbaefd1b0672104f71e21a88f95f9f`  
		Last Modified: Mon, 05 Oct 2026 21:41:57 GMT  
		Size: 8.7 KB (8736 bytes)  
		MIME: application/vnd.in-toto+json
