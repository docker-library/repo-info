## `azul-zulu:8-jre-headless-almalinux10`

```console
$ docker pull azul-zulu@sha256:6fad218ae8a075c4eb5be0e30b3b7a1cc896c2f3fc64f61c3be0f8777817e126
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:8-jre-headless-almalinux10` - linux; amd64

```console
$ docker pull azul-zulu@sha256:1a558b2294277e9603b36d87eb424894ec24535ca3fb6d7e114752fde8d046b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.7 MB (117675094 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04d76524d244d15b2a983ebc6d0ee935af9775b6fcf3309495963cb1070c9872`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 27 Oct 2026 17:19:27 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Tue, 27 Oct 2026 17:19:27 GMT
CMD ["/bin/bash"]
# Mon, 09 Nov 2026 20:19:32 GMT
ARG REPO_HOST=repos.azul.com
# Mon, 09 Nov 2026 20:19:32 GMT
ENV LANG=C.UTF-8
# Mon, 09 Nov 2026 20:19:32 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu8-jre-headless-8.0.512-5;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Mon, 09 Nov 2026 20:19:32 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
# Mon, 09 Nov 2026 20:19:32 GMT
ENV PATH=/usr/lib/jvm/zulu8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:fbe51e09d58f27fe4ca0bd213ca711d43317974be46fe5dfda5dc62fa95cf57f`  
		Last Modified: Tue, 27 Oct 2026 17:19:44 GMT  
		Size: 69.1 MB (69099275 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7f9f4bc12e37207aeea3aa4c08a0a11d1e5179bbe7210c819cf67e57ab63e7b`  
		Last Modified: Mon, 09 Nov 2026 20:19:40 GMT  
		Size: 48.6 MB (48575819 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-jre-headless-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:d2782e74de9c279e4ed59abe6f79ad8a0053b114b699c9b8c27fdf87d1e48c3b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9221 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b7bfa0bc7533ccf4fafa4c2233f53cfa251dc4f6c2927b3385296576530f675`

```dockerfile
```

-	Layers:
	-	`sha256:2e55bdf11822c79a74ecfc76f076e23846b7bc606464a913766ccf7a00cb6194`  
		Last Modified: Mon, 09 Nov 2026 20:19:39 GMT  
		Size: 9.2 KB (9221 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:8-jre-headless-almalinux10` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:87df40610dbf2112f65e65438327b49e95d15a83479493ef175eab7cc99c3524
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.5 MB (116471917 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd4f94aea3168b2665c4655926b5a292f999e10f6ded9ac18723f98693f99bc0`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 27 Oct 2026 17:18:20 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Tue, 27 Oct 2026 17:18:20 GMT
CMD ["/bin/bash"]
# Mon, 09 Nov 2026 20:20:55 GMT
ARG REPO_HOST=repos.azul.com
# Mon, 09 Nov 2026 20:20:55 GMT
ENV LANG=C.UTF-8
# Mon, 09 Nov 2026 20:20:55 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu8-jre-headless-8.0.512-5;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Mon, 09 Nov 2026 20:20:55 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
# Mon, 09 Nov 2026 20:20:55 GMT
ENV PATH=/usr/lib/jvm/zulu8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:169cdc535a3129531af940f152493deebb4c9a4cc959e97da7fda2d47c0eb894`  
		Last Modified: Tue, 27 Oct 2026 17:18:36 GMT  
		Size: 67.7 MB (67666511 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c29088fe0d68107c146ba5fe20885e0a27ca2b473e9d18063514f98fd907609b`  
		Last Modified: Mon, 09 Nov 2026 20:21:04 GMT  
		Size: 48.8 MB (48805406 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-jre-headless-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:7c5245df985dc18180045e4b2a2b539119813128bc7f6d03ba4be1dfdaf233e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe472d03e935ceeb36040f15e51bcdc95978ff6fb2e378b9d4c88a1d54b30bb0`

```dockerfile
```

-	Layers:
	-	`sha256:570a67150ffd8401785af43737c2fd8b14c8e95397a29e8429c392bbdbbeb2a7`  
		Last Modified: Mon, 09 Nov 2026 20:21:03 GMT  
		Size: 9.3 KB (9313 bytes)  
		MIME: application/vnd.in-toto+json
