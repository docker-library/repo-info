## `amazoncorretto:21-al2-generic-jdk`

```console
$ docker pull amazoncorretto@sha256:0014e45cb78b9ffa618f8689f46b60ba70ed18578e1aedb29a543c7eaccba8de
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:21-al2-generic-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:2d857c46fea40a3065a41154c1db0ca1e2c4e85496ee5929d3f52b534c436571
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **228.6 MB (228569106 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:596299e40b704866ff5943469e97c9fda8737a345251d99f207869ec45a6175a`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 27 Jul 2026 21:19:37 GMT
COPY /rootfs/ / # buildkit
# Mon, 27 Jul 2026 21:19:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Jul 2026 21:36:58 GMT
ARG version=21.0.12.8-1
# Mon, 27 Jul 2026 21:36:58 GMT
# ARGS: version=21.0.12.8-1
RUN set -eux     && export GNUPGHOME="$(mktemp -d)"     && curl -fL -o corretto.key https://yum.corretto.aws/corretto.key     && gpg --batch --import corretto.key     && gpg --batch --export --armor '6DC3636DAE534049C8B94623A122542AB04F24E3' > corretto.key     && rpm --import corretto.key     && rm -r "$GNUPGHOME" corretto.key     && curl -fL -o /etc/yum.repos.d/corretto.repo https://yum.corretto.aws/corretto.repo     && grep -q '^gpgcheck=1' /etc/yum.repos.d/corretto.repo     && echo "priority=9" >> /etc/yum.repos.d/corretto.repo     && yum install -y java-21-amazon-corretto-devel-$version     && (find /usr/lib/jvm/java-21-amazon-corretto -name src.zip -delete || true)     && yum install -y fontconfig     && yum clean all # buildkit
# Mon, 27 Jul 2026 21:36:58 GMT
ENV LANG=C.UTF-8
# Mon, 27 Jul 2026 21:36:58 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
```

-	Layers:
	-	`sha256:ecb305a9fa099768e2ab2db16a63b4d1c27e400b85713b11b7acf4f08d3c4246`  
		Last Modified: Tue, 21 Jul 2026 12:36:19 GMT  
		Size: 63.0 MB (62956821 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d8b8ac634634cab9e22ae0541ccd003484b02e5d8040fb3fa1ee00de6adff11`  
		Last Modified: Mon, 27 Jul 2026 21:37:18 GMT  
		Size: 165.6 MB (165612285 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:21-al2-generic-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:1ccf35d94f9973ed02c28d378b798829b68ce88753b1aa3d8e5124ca614a4c07
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5547116 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:952b75508e5776efc370d2649b6d41544dba2acc927f8ba69d770acf56bdacb8`

```dockerfile
```

-	Layers:
	-	`sha256:692fba297f98c678efcc40459e69cd6e0dc65de9fc2d8a9002f6f66a4f6fe414`  
		Last Modified: Mon, 27 Jul 2026 21:37:14 GMT  
		Size: 5.5 MB (5536212 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ccad5e4027a6bd12c965b0935632a0f826d47f3e27f2fb02b3324cea2a3f3555`  
		Last Modified: Mon, 27 Jul 2026 21:37:14 GMT  
		Size: 10.9 KB (10904 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:21-al2-generic-jdk` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:e1435a3294dd901fdc603257e41df2e7512142c7801c8508329250337af285f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **228.6 MB (228583369 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e90674ad881b85b59fcf62da9f899cacea773128ed704b4c68886c81da3db179`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 27 Jul 2026 21:19:38 GMT
COPY /rootfs/ / # buildkit
# Mon, 27 Jul 2026 21:19:38 GMT
CMD ["/bin/bash"]
# Mon, 27 Jul 2026 21:36:18 GMT
ARG version=21.0.12.8-1
# Mon, 27 Jul 2026 21:36:18 GMT
# ARGS: version=21.0.12.8-1
RUN set -eux     && export GNUPGHOME="$(mktemp -d)"     && curl -fL -o corretto.key https://yum.corretto.aws/corretto.key     && gpg --batch --import corretto.key     && gpg --batch --export --armor '6DC3636DAE534049C8B94623A122542AB04F24E3' > corretto.key     && rpm --import corretto.key     && rm -r "$GNUPGHOME" corretto.key     && curl -fL -o /etc/yum.repos.d/corretto.repo https://yum.corretto.aws/corretto.repo     && grep -q '^gpgcheck=1' /etc/yum.repos.d/corretto.repo     && echo "priority=9" >> /etc/yum.repos.d/corretto.repo     && yum install -y java-21-amazon-corretto-devel-$version     && (find /usr/lib/jvm/java-21-amazon-corretto -name src.zip -delete || true)     && yum install -y fontconfig     && yum clean all # buildkit
# Mon, 27 Jul 2026 21:36:18 GMT
ENV LANG=C.UTF-8
# Mon, 27 Jul 2026 21:36:18 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
```

-	Layers:
	-	`sha256:0a46a1a412d5f6c5cdb7477c659ba32441211eaf54fce3b67c715aed53a63deb`  
		Last Modified: Fri, 24 Jul 2026 16:24:54 GMT  
		Size: 64.8 MB (64800064 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:116b5f2dc6894c3a34807a21914d994f63ff05eee74e5a4f59a129e124cd7705`  
		Last Modified: Mon, 27 Jul 2026 21:36:41 GMT  
		Size: 163.8 MB (163783305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:21-al2-generic-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:d795aa208eaff4da9433aeeb81d211e0b2aa782159682714f04282e82b56b5d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5545933 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf923f60ea47a70f017ce9af77fd5fe4b8b7787b68b7938f695e0a8b84c7bc91`

```dockerfile
```

-	Layers:
	-	`sha256:23657a6b003aaff85ea68a3c9c452cb0caab75b12e226f1e4cb8d879b6c1bf79`  
		Last Modified: Mon, 27 Jul 2026 21:36:37 GMT  
		Size: 5.5 MB (5534889 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:57f3f22d4b38d42c0d5a930bc542c80f74875a4740fdd95e07092dccaee8742e`  
		Last Modified: Mon, 27 Jul 2026 21:36:37 GMT  
		Size: 11.0 KB (11044 bytes)  
		MIME: application/vnd.in-toto+json
