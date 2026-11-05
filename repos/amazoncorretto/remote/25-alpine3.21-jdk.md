## `amazoncorretto:25-alpine3.21-jdk`

```console
$ docker pull amazoncorretto@sha256:be9663657a2d5c4fc15ec2cc58c4fcafb64c159b82d888eba098a9cc6f1fd956
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:25-alpine3.21-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:45a411380e80ba0e7cbd858f45c66b7ea172c17948187da3873e1948d83ef2d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.1 MB (185114967 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5a7b93e903fd87b0ef34fc672ba5c1d9e71bf37db1ceebcee7eee57960c45db`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:43 GMT
ADD alpine-minirootfs-3.21.10-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:43 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:13:55 GMT
ARG version=25.0.5.0.10
# Thu, 05 Nov 2026 19:13:55 GMT
# ARGS: version=25.0.5.0.10
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-25=$version-r0 &&     rm -rf /usr/lib/jvm/java-25-amazon-corretto/lib/src.zip # buildkit
# Thu, 05 Nov 2026 19:13:55 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 19:13:55 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 05 Nov 2026 19:13:55 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:871d48e9bf6b789a439a4a19c1e152009924d818e60f7c51e498573223cd7cda`  
		Last Modified: Thu, 05 Nov 2026 18:00:48 GMT  
		Size: 3.6 MB (3625402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4c7f800b3259f01684869e8b3a69a7d8d77147aea90c1bec8f6da6feb7cd4f8`  
		Last Modified: Thu, 05 Nov 2026 19:14:14 GMT  
		Size: 181.5 MB (181489565 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:25-alpine3.21-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:9cf816511c535243f22166819bbf0a81a8ee7367a0e8e8e58c893ad06eca4df0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **605.6 KB (605586 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39808979592c77591f9ab9148ce7c454e3595f25e7d2a365020ea39d9873371e`

```dockerfile
```

-	Layers:
	-	`sha256:6de7156d23f028359ee1b5dcc4424ad0a994e22d0a8abe59fa6a2ac100982923`  
		Last Modified: Thu, 05 Nov 2026 19:14:10 GMT  
		Size: 596.2 KB (596214 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4e9707c9a0c361bdc31311090e8ab676b662bd256c14a3d371952b1a3186ee26`  
		Last Modified: Thu, 05 Nov 2026 19:14:10 GMT  
		Size: 9.4 KB (9372 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:25-alpine3.21-jdk` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:605a408fc7cfb4e2cc18246c4201233b19f36b86521484c4c7159984be9eeaa0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **183.0 MB (183043020 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9c09cfad3a6945dcebc6efcc53e713b820ca5d8beb29e044763319329600d53`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:37 GMT
ADD alpine-minirootfs-3.21.9-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:37 GMT
CMD ["/bin/sh"]
# Tue, 27 Oct 2026 16:41:01 GMT
ARG version=25.0.5.0.10
# Tue, 27 Oct 2026 16:41:01 GMT
# ARGS: version=25.0.5.0.10
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-25=$version-r0 &&     rm -rf /usr/lib/jvm/java-25-amazon-corretto/lib/src.zip # buildkit
# Tue, 27 Oct 2026 16:41:01 GMT
ENV LANG=C.UTF-8
# Tue, 27 Oct 2026 16:41:01 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Tue, 27 Oct 2026 16:41:01 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:7d46ac86a55c03b040c4ce8f9078c3eefe1830e2ec8d99bee5b984e224182102`  
		Last Modified: Wed, 21 Oct 2026 20:47:42 GMT  
		Size: 4.0 MB (3974371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7424f3e70460d755a8294a92ad16d463fc1b8a142ab8cd5428264c4df855fd62`  
		Last Modified: Tue, 27 Oct 2026 16:41:21 GMT  
		Size: 179.1 MB (179068649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:25-alpine3.21-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:5615078b5f89813443e02ef53ea144322e3d62e1df8032e41bf97a9da61af244
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **605.1 KB (605100 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70d7010be3b87ac7d953e4fd981ce20c4108ad706dd0d99caf4527ab863847d1`

```dockerfile
```

-	Layers:
	-	`sha256:509bbaed09c53490eff2c7e6b3913e41286de8dd7e47e3d888f3ab822589f978`  
		Last Modified: Tue, 27 Oct 2026 16:41:18 GMT  
		Size: 595.6 KB (595624 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:47e51e45efb590138e6cd78f9777d9d75a4ea943f5d7263f31892387efc3a461`  
		Last Modified: Tue, 27 Oct 2026 16:41:18 GMT  
		Size: 9.5 KB (9476 bytes)  
		MIME: application/vnd.in-toto+json
