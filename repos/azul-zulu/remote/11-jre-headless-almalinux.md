## `azul-zulu:11-jre-headless-almalinux`

```console
$ docker pull azul-zulu@sha256:48e443d9572c72235060a3fc9835562798b4c56f0cc3e08622372299606b9d0e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:11-jre-headless-almalinux` - linux; amd64

```console
$ docker pull azul-zulu@sha256:045a6a94e863ee62fb9f56d5e9a94934e61d9f8260d8630e5aaa2f19b0315de8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.2 MB (135160474 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5619800ba2323911667c29d2949eebbddea122aded5b75a78d9ad1dc13c7a6e1`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 27 Oct 2026 17:19:27 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Tue, 27 Oct 2026 17:19:27 GMT
CMD ["/bin/bash"]
# Mon, 09 Nov 2026 20:22:15 GMT
ARG REPO_HOST=repos.azul.com
# Mon, 09 Nov 2026 20:22:15 GMT
ENV LANG=C.UTF-8
# Mon, 09 Nov 2026 20:22:15 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu11-jre-headless-11.0.33-5;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Mon, 09 Nov 2026 20:22:15 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
# Mon, 09 Nov 2026 20:22:15 GMT
ENV PATH=/usr/lib/jvm/zulu11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:fbe51e09d58f27fe4ca0bd213ca711d43317974be46fe5dfda5dc62fa95cf57f`  
		Last Modified: Tue, 27 Oct 2026 17:19:44 GMT  
		Size: 69.1 MB (69099275 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73495bba87764444add0bb2ad8233ce644d99ef56bf16b4edc667c0ef2fa7765`  
		Last Modified: Mon, 09 Nov 2026 20:22:26 GMT  
		Size: 66.1 MB (66061199 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-jre-headless-almalinux` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:1339cf7595d9ddfde76132cc83404621827d56e9bad2913cef745846f7dba2b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9234 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2882abe2cdefd81d42fa5ca46361013295bcfdbcc2ae07f4113c97e85048511b`

```dockerfile
```

-	Layers:
	-	`sha256:5113a80604fd6821c10edf0e9bd3fbdad9181374bafba7ead06a14cb3cc6fbbf`  
		Last Modified: Mon, 09 Nov 2026 20:22:25 GMT  
		Size: 9.2 KB (9234 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:11-jre-headless-almalinux` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:98adf42e6ca9bc28769c2d1739a29d69afe232fc627231b407bf79d54529eab6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.5 MB (133546265 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae80a5ee268acc82bae4ce6eb07a9e33480250dccc11167bc1f242d915453571`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 27 Oct 2026 17:18:20 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Tue, 27 Oct 2026 17:18:20 GMT
CMD ["/bin/bash"]
# Mon, 09 Nov 2026 20:23:59 GMT
ARG REPO_HOST=repos.azul.com
# Mon, 09 Nov 2026 20:23:59 GMT
ENV LANG=C.UTF-8
# Mon, 09 Nov 2026 20:23:59 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu11-jre-headless-11.0.33-5;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Mon, 09 Nov 2026 20:23:59 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
# Mon, 09 Nov 2026 20:23:59 GMT
ENV PATH=/usr/lib/jvm/zulu11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:169cdc535a3129531af940f152493deebb4c9a4cc959e97da7fda2d47c0eb894`  
		Last Modified: Tue, 27 Oct 2026 17:18:36 GMT  
		Size: 67.7 MB (67666511 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d7beabd4a6594d6770120e8d857d1afecf9fc5f8bc027a0c258dba55546ce55`  
		Last Modified: Mon, 09 Nov 2026 20:24:11 GMT  
		Size: 65.9 MB (65879754 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-jre-headless-almalinux` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:e04cee39be3222fae636cd06b0e47a98015354f51bc198620b6ebd5d7af3d08c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9324 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a881fbc929cfe3478b6d1b633e840141e1e165284312ad67533540bd57572cf8`

```dockerfile
```

-	Layers:
	-	`sha256:793c1b7a7a3a20bafc60a3e75c561ef6c83f369444ae11a2fcc4125db16af09e`  
		Last Modified: Mon, 09 Nov 2026 20:24:09 GMT  
		Size: 9.3 KB (9324 bytes)  
		MIME: application/vnd.in-toto+json
