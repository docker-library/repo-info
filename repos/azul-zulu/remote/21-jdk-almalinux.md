## `azul-zulu:21-jdk-almalinux`

```console
$ docker pull azul-zulu@sha256:4872ff91a23c52e32e59bdcfa0fb8d517f68705743e7e3ca617451294594f181
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:21-jdk-almalinux` - linux; amd64

```console
$ docker pull azul-zulu@sha256:eb0b60e09d364547c0e8b527aeff9bb368e9fe1ed3a635329b9e56eff3e85ab8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **234.3 MB (234308818 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7bbc390357abf61cf7a80e988abf89d52cd30aa713fe17407abd06bf309f9290`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 27 Oct 2026 17:19:27 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Tue, 27 Oct 2026 17:19:27 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 17:27:41 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 27 Oct 2026 17:27:41 GMT
ENV LANG=C.UTF-8
# Tue, 27 Oct 2026 17:27:41 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu21-jdk-21.0.13-3;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Tue, 27 Oct 2026 17:27:41 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu21
# Tue, 27 Oct 2026 17:27:41 GMT
ENV PATH=/usr/lib/jvm/zulu21/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 17:27:41 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:fbe51e09d58f27fe4ca0bd213ca711d43317974be46fe5dfda5dc62fa95cf57f`  
		Last Modified: Tue, 27 Oct 2026 17:19:44 GMT  
		Size: 69.1 MB (69099275 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d15726682a3cc05c999054d781be30dbbc563652459dddf20cfef1935da5293`  
		Last Modified: Tue, 27 Oct 2026 17:27:57 GMT  
		Size: 165.2 MB (165209543 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:21-jdk-almalinux` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:1ce1b9d7f75a3b667fe76ed43fed1c946c0423646be893d0a8128d0210399039
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.5 KB (9482 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ae285adbd497656eb04ce695d8ca19adcaa8f3c9d668c4d05401f230be446ff`

```dockerfile
```

-	Layers:
	-	`sha256:ce284b3bc263d170a2d34f459684dd0fa27a3cdd49eab8eb7175d2e2b5fc8621`  
		Last Modified: Tue, 27 Oct 2026 17:27:53 GMT  
		Size: 9.5 KB (9482 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:21-jdk-almalinux` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:85d106fd25d172794e6a495a4c48eaf53e9f2643ddd3006e13887962c62a13aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **232.2 MB (232172715 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4856e7f7a8d533adad1c21142bb91eaff2675c399a39e3932adf47c1e3c48959`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 27 Oct 2026 17:18:20 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Tue, 27 Oct 2026 17:18:20 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 17:23:12 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 27 Oct 2026 17:23:12 GMT
ENV LANG=C.UTF-8
# Tue, 27 Oct 2026 17:23:12 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu21-jdk-21.0.13-3;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Tue, 27 Oct 2026 17:23:12 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu21
# Tue, 27 Oct 2026 17:23:12 GMT
ENV PATH=/usr/lib/jvm/zulu21/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 17:23:12 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:169cdc535a3129531af940f152493deebb4c9a4cc959e97da7fda2d47c0eb894`  
		Last Modified: Tue, 27 Oct 2026 17:18:36 GMT  
		Size: 67.7 MB (67666511 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7c6d746f6d8c4823c98e394ffd9d09d9fe73cb2834d8993726daaf95e7af6e0`  
		Last Modified: Tue, 27 Oct 2026 17:23:30 GMT  
		Size: 164.5 MB (164506204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:21-jdk-almalinux` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:e1ae0ac22f6b69bd2528d58887fa375f8d7a1d7f26c8b4b82d55e21f41a04730
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.6 KB (9586 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea10ac3ce30b69f5dadaa038c8c0f7f035f289e9d8bae84ffd1cb744c1219c6d`

```dockerfile
```

-	Layers:
	-	`sha256:8760d266a96e319d040c27a548a5c0e6290ba0cf19b1a8b8ee45a5dd2f14f51a`  
		Last Modified: Tue, 27 Oct 2026 17:23:26 GMT  
		Size: 9.6 KB (9586 bytes)  
		MIME: application/vnd.in-toto+json
