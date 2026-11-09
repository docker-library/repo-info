## `azul-zulu:8-jre-almalinux`

```console
$ docker pull azul-zulu@sha256:e4e6f1373b4fe0c37093bfc389f17544581664699b8549a02ca19d64ce8c191f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:8-jre-almalinux` - linux; amd64

```console
$ docker pull azul-zulu@sha256:bd2b3d02a13dc7f5b0486268a4cec91e7b53dfa8930b6bf2be58581f83cb4468
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.3 MB (120279227 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30a602ecb06bd432a932655b80c625517ce8b6dfee408be6a1e4226ea6aa957a`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 27 Oct 2026 17:19:27 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Tue, 27 Oct 2026 17:19:27 GMT
CMD ["/bin/bash"]
# Mon, 09 Nov 2026 20:19:30 GMT
ARG REPO_HOST=repos.azul.com
# Mon, 09 Nov 2026 20:19:30 GMT
ENV LANG=C.UTF-8
# Mon, 09 Nov 2026 20:19:30 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu8-jre-8.0.512-5;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Mon, 09 Nov 2026 20:19:30 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
# Mon, 09 Nov 2026 20:19:30 GMT
ENV PATH=/usr/lib/jvm/zulu8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:fbe51e09d58f27fe4ca0bd213ca711d43317974be46fe5dfda5dc62fa95cf57f`  
		Last Modified: Tue, 27 Oct 2026 17:19:44 GMT  
		Size: 69.1 MB (69099275 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88690b08cccb24903bd0d163057510bf10681842ac2a6d84ee5120c75730b2be`  
		Last Modified: Mon, 09 Nov 2026 20:19:39 GMT  
		Size: 51.2 MB (51179952 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-jre-almalinux` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:43e95609d0622fc35f451bcf2c9b083c76d4f464b6ac91ea89d0bdc30d84ea31
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.1 KB (9128 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b297b5a00d6571074462e8b9019ae0c5848131079fe16d191173046433d11139`

```dockerfile
```

-	Layers:
	-	`sha256:8c744c0a7aa49c6de9b179cc9891a4e5978a9c0889886de34b0c9d35b5c80475`  
		Last Modified: Mon, 09 Nov 2026 20:19:37 GMT  
		Size: 9.1 KB (9128 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:8-jre-almalinux` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:061639f1ac1845986164b62f71d03703d13e7728ce19067175f367105a590e6e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.1 MB (119103844 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf9ad8a0dee8d349e3d1de026f58584d37fbe8e58dcd6c789d3da17b0b79c46f`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 27 Oct 2026 17:18:20 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Tue, 27 Oct 2026 17:18:20 GMT
CMD ["/bin/bash"]
# Mon, 09 Nov 2026 20:20:52 GMT
ARG REPO_HOST=repos.azul.com
# Mon, 09 Nov 2026 20:20:52 GMT
ENV LANG=C.UTF-8
# Mon, 09 Nov 2026 20:20:52 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu8-jre-8.0.512-5;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Mon, 09 Nov 2026 20:20:52 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
# Mon, 09 Nov 2026 20:20:52 GMT
ENV PATH=/usr/lib/jvm/zulu8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:169cdc535a3129531af940f152493deebb4c9a4cc959e97da7fda2d47c0eb894`  
		Last Modified: Tue, 27 Oct 2026 17:18:36 GMT  
		Size: 67.7 MB (67666511 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48676c1f6ad81ed28b00a6e5ae8b9827125b3c26c6883530a79bcccfb5864c52`  
		Last Modified: Mon, 09 Nov 2026 20:21:01 GMT  
		Size: 51.4 MB (51437333 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-jre-almalinux` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:385b3ff2709679d058943149967e0670caecfe9320e3060de2c2766c7bc87f22
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8a0e083833ba9b3b907d501a7cfab006a63c9e7f5f2ac6a53c504c33a1a65c1`

```dockerfile
```

-	Layers:
	-	`sha256:1ee66d28a6f9a111fee4258ad7bf87c79e9afd036b79f0de3098e4ad8b9879cc`  
		Last Modified: Mon, 09 Nov 2026 20:21:00 GMT  
		Size: 9.2 KB (9220 bytes)  
		MIME: application/vnd.in-toto+json
