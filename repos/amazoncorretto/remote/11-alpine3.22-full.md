## `amazoncorretto:11-alpine3.22-full`

```console
$ docker pull amazoncorretto@sha256:ab9c853737db6f3dea1f25cd09a6e6bb93b284f0f85941b570ba2c30b5c42b9f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:11-alpine3.22-full` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:b2657fe358f50c6567713eeff8e7943bb3d3891d96e3028e16ce3d61a193a6ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.7 MB (147741139 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:197fb2e1b1d8b34251a075a3438e7f1dbab3a1ba64238ea5b9f463ca7620e7b7`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.22.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Thu, 20 Aug 2026 17:19:26 GMT
ARG version=11.0.32.10.1
# Thu, 20 Aug 2026 17:19:26 GMT
# ARGS: version=11.0.32.10.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-11=$version-r0 &&     rm -rf /usr/lib/jvm/java-11-amazon-corretto/lib/src.zip # buildkit
# Thu, 20 Aug 2026 17:19:26 GMT
ENV LANG=C.UTF-8
# Thu, 20 Aug 2026 17:19:26 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 20 Aug 2026 17:19:26 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:f7ee36c9aa34bbb665f975c76e5c0d1607f0674b94c84cfb0061f87006ea5d10`  
		Last Modified: Mon, 22 Jun 2026 09:11:44 GMT  
		Size: 3.8 MB (3787595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4cc1164393af677681f7e35ede5a2aabf447c04bb54a224a77936a7f5306bf8a`  
		Last Modified: Thu, 20 Aug 2026 17:19:43 GMT  
		Size: 144.0 MB (143953544 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-alpine3.22-full` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:6c87c054aca304e96b47da60d5520384ab8e650b9526cf8a8e448c2e88fe043a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **598.3 KB (598318 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc4161b15fa8e3cc17a1e9a7520cd933793b0758e1cb08b5076c4ea26031de82`

```dockerfile
```

-	Layers:
	-	`sha256:ccbd680a86f931d1a1e3bbab8b0fe0af1d418f899e8a957f720440d4655120b5`  
		Last Modified: Thu, 20 Aug 2026 17:19:39 GMT  
		Size: 588.9 KB (588939 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9363491e1d3c34d3bc15485f10aede6c912e24ff45f1eb0dfd437e4e03c2847d`  
		Last Modified: Thu, 20 Aug 2026 17:19:39 GMT  
		Size: 9.4 KB (9379 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:11-alpine3.22-full` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:ce2625876d673a49f8a0fad642c9a259a245035cebcf269fe2c5e9e86db54cde
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.5 MB (146451692 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e05a82095e6678223882bad68b15120b9ba9f8f1f5302520a822e36212680569`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:11 GMT
ADD alpine-minirootfs-3.22.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:11 GMT
CMD ["/bin/sh"]
# Thu, 20 Aug 2026 17:22:18 GMT
ARG version=11.0.32.10.1
# Thu, 20 Aug 2026 17:22:18 GMT
# ARGS: version=11.0.32.10.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-11=$version-r0 &&     rm -rf /usr/lib/jvm/java-11-amazon-corretto/lib/src.zip # buildkit
# Thu, 20 Aug 2026 17:22:18 GMT
ENV LANG=C.UTF-8
# Thu, 20 Aug 2026 17:22:18 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 20 Aug 2026 17:22:18 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:738128faa30f570583b0e57efd831e0e6a2a9aacf1be88c8f4c1ef8a5b7033cc`  
		Last Modified: Mon, 22 Jun 2026 09:11:35 GMT  
		Size: 4.1 MB (4120486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00fe93973a4ed3e330ff6100dabd67da36b8f763717ebce668b78a681160f8d4`  
		Last Modified: Thu, 20 Aug 2026 17:22:36 GMT  
		Size: 142.3 MB (142331206 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-alpine3.22-full` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:1ca2dc8e151f1f09db669c16ba87d34d4d0a5ce9868acf3df948cbd16efc530c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **598.5 KB (598477 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7a81ab2608b2a7ee61e99bfac118fb3440ed97b9f5f7f21c30f8d7fcb694c0e`

```dockerfile
```

-	Layers:
	-	`sha256:bf053af8430c43e5d0c6b5cf2bb6979ca66008506af836e0c8ddc41535b1baf9`  
		Last Modified: Thu, 20 Aug 2026 17:22:33 GMT  
		Size: 589.0 KB (588995 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:af4c08ef0c4eedfad4810c7b17833738e91cebe31f002b27eb99722e2b7b0aec`  
		Last Modified: Thu, 20 Aug 2026 17:22:33 GMT  
		Size: 9.5 KB (9482 bytes)  
		MIME: application/vnd.in-toto+json
