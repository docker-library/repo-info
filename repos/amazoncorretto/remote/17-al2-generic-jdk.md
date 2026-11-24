## `amazoncorretto:17-al2-generic-jdk`

```console
$ docker pull amazoncorretto@sha256:7ee8eb4958f27db05aef3867b1790c20018334506cc2a046de7f76093d9f270b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:17-al2-generic-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:eb974356a677d85a4a9ea6d563f45e876222a129072b9a831e77820e7cacf167
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.7 MB (215697910 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8815b14afe4f2f1d64a8293786191b67fc0df1212482b326773c55fa39141d77`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 23 Nov 2026 20:28:09 GMT
COPY /rootfs/ / # buildkit
# Mon, 23 Nov 2026 20:28:09 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 21:10:16 GMT
ARG version=17.0.21.1.2-1
# Mon, 23 Nov 2026 21:10:16 GMT
# ARGS: version=17.0.21.1.2-1
RUN set -eux     && export GNUPGHOME="$(mktemp -d)"     && curl -fL -o corretto.key https://yum.corretto.aws/corretto.key     && gpg --batch --import corretto.key     && gpg --batch --export --armor '6DC3636DAE534049C8B94623A122542AB04F24E3' > corretto.key     && rpm --import corretto.key     && rm -r "$GNUPGHOME" corretto.key     && curl -fL -o /etc/yum.repos.d/corretto.repo https://yum.corretto.aws/corretto.repo     && grep -q '^gpgcheck=1' /etc/yum.repos.d/corretto.repo     && echo "priority=9" >> /etc/yum.repos.d/corretto.repo     && yum install -y java-17-amazon-corretto-devel-$version     && (find /usr/lib/jvm/java-17-amazon-corretto -name src.zip -delete || true)     && yum install -y fontconfig     && yum clean all # buildkit
# Mon, 23 Nov 2026 21:10:16 GMT
ENV LANG=C.UTF-8
# Mon, 23 Nov 2026 21:10:16 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
```

-	Layers:
	-	`sha256:5578d26df6c6bdfe9ec366cb0917de223c7478cae192d8015a93c8b38b37ab17`  
		Last Modified: Sat, 21 Nov 2026 04:12:27 GMT  
		Size: 62.9 MB (62930101 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4019e8e13e4b4a21f1f58242f76e7736cbe5f317b76d5fd5b06b76b5d63d2e57`  
		Last Modified: Mon, 23 Nov 2026 21:10:35 GMT  
		Size: 152.8 MB (152767809 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-al2-generic-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:b92e671547411a349e16208c786f2d7b209b7b8ed38ecf06a971748caa9e645c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5547253 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ffba3e12cf6cfc80353f417ce37f19e9f1eb7b49cd51f0715d931272d8d6d633`

```dockerfile
```

-	Layers:
	-	`sha256:84192c4e9bff755a5d3c7edacd73437dfaa44ffca034b3a722ad1aebbb93b002`  
		Last Modified: Mon, 23 Nov 2026 21:10:32 GMT  
		Size: 5.5 MB (5536343 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2e0f60f94679386a0f9e77024cc19911b0fd4c9ae31d06f8882264836f3cfe1e`  
		Last Modified: Mon, 23 Nov 2026 21:10:32 GMT  
		Size: 10.9 KB (10910 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:17-al2-generic-jdk` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:51c20ae846530d5b43d41f3ce9819bc522c2bcde039dc41036e614aa86887369
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.3 MB (216320958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3671361677186fdc9178f09fa65d2d8c8231110d29c26efde7a979e45a9d62d7`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 23 Nov 2026 20:28:16 GMT
COPY /rootfs/ / # buildkit
# Mon, 23 Nov 2026 20:28:16 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 21:10:17 GMT
ARG version=17.0.21.1.2-1
# Mon, 23 Nov 2026 21:10:17 GMT
# ARGS: version=17.0.21.1.2-1
RUN set -eux     && export GNUPGHOME="$(mktemp -d)"     && curl -fL -o corretto.key https://yum.corretto.aws/corretto.key     && gpg --batch --import corretto.key     && gpg --batch --export --armor '6DC3636DAE534049C8B94623A122542AB04F24E3' > corretto.key     && rpm --import corretto.key     && rm -r "$GNUPGHOME" corretto.key     && curl -fL -o /etc/yum.repos.d/corretto.repo https://yum.corretto.aws/corretto.repo     && grep -q '^gpgcheck=1' /etc/yum.repos.d/corretto.repo     && echo "priority=9" >> /etc/yum.repos.d/corretto.repo     && yum install -y java-17-amazon-corretto-devel-$version     && (find /usr/lib/jvm/java-17-amazon-corretto -name src.zip -delete || true)     && yum install -y fontconfig     && yum clean all # buildkit
# Mon, 23 Nov 2026 21:10:17 GMT
ENV LANG=C.UTF-8
# Mon, 23 Nov 2026 21:10:17 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
```

-	Layers:
	-	`sha256:6260f7832ff0690923da519c8d6fed973ab9207dae75750f3de443c494a4ff4f`  
		Last Modified: Mon, 23 Nov 2026 20:28:32 GMT  
		Size: 64.8 MB (64796591 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f89c7710cfc9624ddd05b6fbf0984c1369837031f17a3c098ff8c91e5d09fe2`  
		Last Modified: Mon, 23 Nov 2026 21:10:38 GMT  
		Size: 151.5 MB (151524367 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-al2-generic-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:3097d39b72914c573e2d16f09874a09266caf3f3c96ecdb11905b831a84eff93
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5546070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53610b70724c431eb033bf59988430147a1883f15c1d203cc15563a121aa7e26`

```dockerfile
```

-	Layers:
	-	`sha256:7c84fecf910ef53a018ffd21240d096366299484bd821449a6f6e268f48145b8`  
		Last Modified: Mon, 23 Nov 2026 21:10:35 GMT  
		Size: 5.5 MB (5535020 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d271a46d0aa50af03eb27a88e4135fb6f7a1c816346f23f85672b95d3d75e13e`  
		Last Modified: Mon, 23 Nov 2026 21:10:34 GMT  
		Size: 11.1 KB (11050 bytes)  
		MIME: application/vnd.in-toto+json
