## `amazoncorretto:8u512-al2-generic`

```console
$ docker pull amazoncorretto@sha256:e5c19a1ddaa0b31e19ca77d114ac7cc2b908331eaf791e89b614c6cbce2e568d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:8u512-al2-generic` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:412792b70d0450ad1804327b3c44e5458a6748686045fcaa2ff68859197ab188
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.0 MB (123001435 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d04b25ceb1432547e88b285bdc06e2a19ca68fa8009144d3c31a44f45d726e71`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 05 Nov 2026 18:52:38 GMT
COPY /rootfs/ / # buildkit
# Thu, 05 Nov 2026 18:52:38 GMT
CMD ["/bin/bash"]
# Thu, 05 Nov 2026 19:58:07 GMT
ARG version=1.8.0_512.b09-1
# Thu, 05 Nov 2026 19:58:07 GMT
# ARGS: version=1.8.0_512.b09-1
RUN set -eux     && export GNUPGHOME="$(mktemp -d)"     && curl -fL -o corretto.key https://yum.corretto.aws/corretto.key     && gpg --batch --import corretto.key     && gpg --batch --export --armor '6DC3636DAE534049C8B94623A122542AB04F24E3' > corretto.key     && rpm --import corretto.key     && rm -r "$GNUPGHOME" corretto.key     && curl -fL -o /etc/yum.repos.d/corretto.repo https://yum.corretto.aws/corretto.repo     && grep -q '^gpgcheck=1' /etc/yum.repos.d/corretto.repo     && echo "priority=9" >> /etc/yum.repos.d/corretto.repo     && yum install -y java-1.8.0-amazon-corretto-devel-$version     && (find /usr/lib/jvm/java-1.8.0-amazon-corretto -name src.zip -delete || true)     && yum install -y fontconfig     && yum clean all # buildkit
# Thu, 05 Nov 2026 19:58:07 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 19:58:07 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
```

-	Layers:
	-	`sha256:0495c25dad2c432d2725b987a8e120fbea60c2f52ab965d1194495d66bd54a79`  
		Last Modified: Sat, 31 Oct 2026 04:10:58 GMT  
		Size: 62.9 MB (62938853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24cd4e1130e0b7cb6bc8c6271ca88e0f47d66cd4d81f3f05ab8d3022c51f11d4`  
		Last Modified: Thu, 05 Nov 2026 19:58:22 GMT  
		Size: 60.1 MB (60062582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8u512-al2-generic` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:3ef0b5e763f0f86466b4137f24f97e247b2343674fbd1365c07874f986e311c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5366685 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97d289d5952945d019c20c2e2317baa614f95ec55ee52afd75de16796264dd67`

```dockerfile
```

-	Layers:
	-	`sha256:cfa1c836010a0771e1553787ca2a2cdb054205f65308a46fd551a60925ffe8de`  
		Last Modified: Thu, 05 Nov 2026 19:58:20 GMT  
		Size: 5.4 MB (5355776 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5bb3fe6b0086aff19ef7ec6b96036923a63a24934f2f804b8e842bd6fa05aade`  
		Last Modified: Thu, 05 Nov 2026 19:58:20 GMT  
		Size: 10.9 KB (10909 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:8u512-al2-generic` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:949384d4b33deb06d42bfe194783a2a3d76ccafdcedef774ce3e14633df92e9b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.8 MB (124793358 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f48243cd216968c5114865981599823a5d0e89568168b3487c1270c48ff7bd4a`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 05 Nov 2026 18:48:41 GMT
COPY /rootfs/ / # buildkit
# Thu, 05 Nov 2026 18:48:41 GMT
CMD ["/bin/bash"]
# Thu, 05 Nov 2026 20:14:33 GMT
ARG version=1.8.0_512.b09-1
# Thu, 05 Nov 2026 20:14:33 GMT
# ARGS: version=1.8.0_512.b09-1
RUN set -eux     && export GNUPGHOME="$(mktemp -d)"     && curl -fL -o corretto.key https://yum.corretto.aws/corretto.key     && gpg --batch --import corretto.key     && gpg --batch --export --armor '6DC3636DAE534049C8B94623A122542AB04F24E3' > corretto.key     && rpm --import corretto.key     && rm -r "$GNUPGHOME" corretto.key     && curl -fL -o /etc/yum.repos.d/corretto.repo https://yum.corretto.aws/corretto.repo     && grep -q '^gpgcheck=1' /etc/yum.repos.d/corretto.repo     && echo "priority=9" >> /etc/yum.repos.d/corretto.repo     && yum install -y java-1.8.0-amazon-corretto-devel-$version     && (find /usr/lib/jvm/java-1.8.0-amazon-corretto -name src.zip -delete || true)     && yum install -y fontconfig     && yum clean all # buildkit
# Thu, 05 Nov 2026 20:14:33 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 20:14:33 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
```

-	Layers:
	-	`sha256:ec84068a79e503a31a893b9fd91255e63276a7d88c803d10789070f5f0d1907a`  
		Last Modified: Mon, 02 Nov 2026 19:56:57 GMT  
		Size: 64.8 MB (64805958 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c136671964cb79f9d60f9f80ab55faf06f87e201b8e658fd946ee10dc309d002`  
		Last Modified: Thu, 05 Nov 2026 20:14:48 GMT  
		Size: 60.0 MB (59987400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8u512-al2-generic` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:ab1ad7a85cc7d12d7becb9314da7ab54ec5e3b57e5a96520de796a08d29111bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5366386 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3451781ce670f785241903341670bf6eb664b8a0f951dc086029515f6cf7089`

```dockerfile
```

-	Layers:
	-	`sha256:dc25ec3a863315015dfaef5f28a784ce5c950ea9b8c61ad8e39e7e5afee37e68`  
		Last Modified: Thu, 05 Nov 2026 20:14:46 GMT  
		Size: 5.4 MB (5355338 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bda2ac443f6fb3bbebd4c49f7f2c2bbe06ff9216c3864b40ca4be78eba86c27b`  
		Last Modified: Thu, 05 Nov 2026 20:14:46 GMT  
		Size: 11.0 KB (11048 bytes)  
		MIME: application/vnd.in-toto+json
