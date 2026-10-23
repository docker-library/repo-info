## `amazoncorretto:27-alpine3.21-full`

```console
$ docker pull amazoncorretto@sha256:9b7c5fc6cb040a327952f1041add34c55d7b02792f5e740dc9bad96fccc2acfa
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:27-alpine3.21-full` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:d2a278cc94986f1235cb609062be8f931f974680e429e8c5c1be1b277dfeb34a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.0 MB (187042428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3ddaef5b6952bbdc32ebc9d633432d3dbbab1586274c38b1528f052a2da9067`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:19 GMT
ADD alpine-minirootfs-3.21.9-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:19 GMT
CMD ["/bin/sh"]
# Fri, 23 Oct 2026 18:10:06 GMT
ARG version=27.0.1.0.10
# Fri, 23 Oct 2026 18:10:06 GMT
# ARGS: version=27.0.1.0.10
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-27=$version-r0 &&     rm -rf /usr/lib/jvm/java-27-amazon-corretto/lib/src.zip # buildkit
# Fri, 23 Oct 2026 18:10:06 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 18:10:06 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Fri, 23 Oct 2026 18:10:06 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:759efa4719c9a44e7f2561a03bff2434dd66e99c916d2e4d50b055bedf554144`  
		Last Modified: Wed, 21 Oct 2026 20:47:25 GMT  
		Size: 3.6 MB (3625395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:656b2b4b0b8f437c750c0b839477d94b1f3a27f0632adc65f6c87060d331d747`  
		Last Modified: Fri, 23 Oct 2026 18:10:27 GMT  
		Size: 183.4 MB (183417033 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:27-alpine3.21-full` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:c0fb41bf88bef3ac89af5ebae9a348c0cf147846044adb731d9905f513e0e88a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **591.0 KB (590976 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03bb8d3faef8b4a212246787b0f3a65eb9098638369271b02f9b56270c364ff0`

```dockerfile
```

-	Layers:
	-	`sha256:07a2b844abb9a0a64b6103aad54752613371f6a26fefa63e4a3f192fd940ec76`  
		Last Modified: Fri, 23 Oct 2026 18:10:23 GMT  
		Size: 581.6 KB (581604 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:af6474ef8ec11989d847a63b6bed7b84b9a123a5dd1a7fbc51d5f8649c245a97`  
		Last Modified: Fri, 23 Oct 2026 18:10:23 GMT  
		Size: 9.4 KB (9372 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:27-alpine3.21-full` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:d05f39c28fd850f539a55fd173b4dfecf34c338038b911166006101304508c23
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.0 MB (185022919 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0dab3e60e18856665ced5695ea79a9def09eb7f65b08824add95e0e303f837e`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:37 GMT
ADD alpine-minirootfs-3.21.9-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:37 GMT
CMD ["/bin/sh"]
# Fri, 23 Oct 2026 18:10:07 GMT
ARG version=27.0.1.0.10
# Fri, 23 Oct 2026 18:10:07 GMT
# ARGS: version=27.0.1.0.10
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-27=$version-r0 &&     rm -rf /usr/lib/jvm/java-27-amazon-corretto/lib/src.zip # buildkit
# Fri, 23 Oct 2026 18:10:07 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 18:10:07 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Fri, 23 Oct 2026 18:10:07 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:7d46ac86a55c03b040c4ce8f9078c3eefe1830e2ec8d99bee5b984e224182102`  
		Last Modified: Wed, 21 Oct 2026 20:47:42 GMT  
		Size: 4.0 MB (3974371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc54675d86b31b7918d8d52f6dd59f7f53147cf8cd4adfe6343d51e1101cc9bb`  
		Last Modified: Fri, 23 Oct 2026 18:10:28 GMT  
		Size: 181.0 MB (181048548 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:27-alpine3.21-full` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:1b402a50d9c43520416bb5986d966ec540468ee8ac0e73fc26edd45413976dfa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **590.5 KB (590495 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24a7ccb0e25fc9ba4d872ebcdf0410a58dddfa0a96e0c174479ffe4aa40b9edc`

```dockerfile
```

-	Layers:
	-	`sha256:550cd38d9a8025b69632b04111beebfad047bff97610f45c6b4461115e57296e`  
		Last Modified: Fri, 23 Oct 2026 18:10:25 GMT  
		Size: 581.0 KB (581020 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5a5decbd00c68ed488d74628a18b7843008ac42b812e478e4144fefde1332c05`  
		Last Modified: Fri, 23 Oct 2026 18:10:24 GMT  
		Size: 9.5 KB (9475 bytes)  
		MIME: application/vnd.in-toto+json
