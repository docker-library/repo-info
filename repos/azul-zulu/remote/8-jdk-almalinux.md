## `azul-zulu:8-jdk-almalinux`

```console
$ docker pull azul-zulu@sha256:343a95f6525c54686b7665967a39aeec092be9ddab7395ea4bb234f2db31ca09
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:8-jdk-almalinux` - linux; amd64

```console
$ docker pull azul-zulu@sha256:5e485696d2346ed09a78d635d08b9803ba35ba860ccf0bfc9eb29ced31d5db10
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.2 MB (132180212 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8fa858ee3ca1695ef29a43c9420b1511b1a1666300a4b73760dd1b3fe3d4863b`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 02 Oct 2026 18:16:42 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Fri, 02 Oct 2026 18:16:42 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 18:21:43 GMT
ARG REPO_HOST=repos.azul.com
# Fri, 02 Oct 2026 18:21:43 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 18:21:43 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu8-jdk-8.0.504-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Fri, 02 Oct 2026 18:21:43 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
# Fri, 02 Oct 2026 18:21:43 GMT
ENV PATH=/usr/lib/jvm/zulu8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:aa40d510fc6e470a2f5bd27e447ebfe9df24b41b10a52ccfb13fe5a7e461a36d`  
		Last Modified: Fri, 02 Oct 2026 18:17:00 GMT  
		Size: 68.9 MB (68879554 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:259c2987c8333bc1f05b8ed6416153b45c8dc0f8b3eb2d65c784aab8db2257fe`  
		Last Modified: Fri, 02 Oct 2026 18:21:54 GMT  
		Size: 63.3 MB (63300658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-jdk-almalinux` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:ee1efd7c7b7054820406ba2162d4cec0dae6e9fd92fe2b42e5993659bd5e3c48
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 KB (9446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c88836503a99bb35e61ab49f0be0e2e156f83ef564d5f648b08ae4fcbfbc975d`

```dockerfile
```

-	Layers:
	-	`sha256:b511c443d385fa53286c8a59d41e44a1aab963d7375087854029fc812f8386f9`  
		Last Modified: Fri, 02 Oct 2026 18:21:52 GMT  
		Size: 9.4 KB (9446 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:8-jdk-almalinux` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:573ea9237caff3183009f3cda0623c7959899abb5df8995a65cc08658dc5d472
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.1 MB (131126594 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:839dfdfeebdea2923b2b2af147980a19b630ea7f6b61ec78400e95574daefb50`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 02 Oct 2026 18:16:16 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Fri, 02 Oct 2026 18:16:16 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 18:21:44 GMT
ARG REPO_HOST=repos.azul.com
# Fri, 02 Oct 2026 18:21:44 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 18:21:44 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu8-jdk-8.0.504-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Fri, 02 Oct 2026 18:21:44 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
# Fri, 02 Oct 2026 18:21:44 GMT
ENV PATH=/usr/lib/jvm/zulu8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:72828735570afd8ff6fa969666f806b8b8aad35a219161ae6386607e517a0ff3`  
		Last Modified: Fri, 02 Oct 2026 18:16:33 GMT  
		Size: 67.5 MB (67458184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d740a66ac5975bd04430a91faaf0f008918b2a7ca6af4795abf808cc54630c38`  
		Last Modified: Fri, 02 Oct 2026 18:21:55 GMT  
		Size: 63.7 MB (63668410 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-jdk-almalinux` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:dbd1f2c3f32a7ec63bef6764d7c8745b0e94b0d3d4585f81719104b0dadbd2ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.6 KB (9550 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f69cad9b377f8685bfe0582bd6fd28c64503cb0471a3c48592d96375d618329`

```dockerfile
```

-	Layers:
	-	`sha256:59ab374cf5226e5ab483a5ba9392574ef755e5f0417c692c92d9daf5b4ae3729`  
		Last Modified: Fri, 02 Oct 2026 18:21:53 GMT  
		Size: 9.6 KB (9550 bytes)  
		MIME: application/vnd.in-toto+json
