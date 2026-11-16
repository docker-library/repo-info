## `azul-zulu:27-jdk-almalinux10`

```console
$ docker pull azul-zulu@sha256:9e948b51f259cbef4602cecd6de6560559112d62c8c646cb329f545400268e81
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:27-jdk-almalinux10` - linux; amd64

```console
$ docker pull azul-zulu@sha256:02cb79cfd85a19a6c54e3ddc4f3b603ed8bbf001acac9e31c8705c77ec7d38a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.6 MB (254558563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71c32f28f1882d58b3606d8416b7085dbf18c15c7fef6772a19b2b14a260d6d1`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 16 Nov 2026 17:37:04 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Mon, 16 Nov 2026 17:37:04 GMT
CMD ["/bin/bash"]
# Mon, 16 Nov 2026 18:11:28 GMT
ARG REPO_HOST=repos.azul.com
# Mon, 16 Nov 2026 18:11:28 GMT
ENV LANG=C.UTF-8
# Mon, 16 Nov 2026 18:11:28 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu27-jdk-27.0.1.0.3-5;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Mon, 16 Nov 2026 18:11:28 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu27
# Mon, 16 Nov 2026 18:11:28 GMT
ENV PATH=/usr/lib/jvm/zulu27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 16 Nov 2026 18:11:28 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d3706e31ba51bfd08aeb09ac0ebbf184e0118db10938a31a3f2e81cb6a30eb58`  
		Last Modified: Sun, 15 Nov 2026 10:39:35 GMT  
		Size: 69.1 MB (69125779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36f63f04facd206bd73e1e014f246424867194e8ba35517bca02f909844c8d5a`  
		Last Modified: Mon, 16 Nov 2026 18:11:46 GMT  
		Size: 185.4 MB (185432784 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:27-jdk-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:d843949365515aa53714c2bbc2458df181312c53b769677d1ebb1581b0e4ecf3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.5 KB (9495 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7918c5cd5a2756dfc0fac322f58aab6867dda0b781ed6a66f71d4793b5ef7e2d`

```dockerfile
```

-	Layers:
	-	`sha256:5c8014beb773adf34feba20c002fff9ac56a9b99a5a3a2fb29b9cfd4ed704e42`  
		Last Modified: Mon, 16 Nov 2026 18:11:42 GMT  
		Size: 9.5 KB (9495 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:27-jdk-almalinux10` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:17eb1d98deb92255004abc3be31319b0cec473e901ec6e7d1fdf3f1de0a74d9d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.8 MB (252818602 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d5aaf5c11903821e2a97324a3d46733ca5d7252b00236eb4ad229ca3b1d2388`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 16 Nov 2026 17:37:01 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Mon, 16 Nov 2026 17:37:01 GMT
CMD ["/bin/bash"]
# Mon, 16 Nov 2026 18:11:26 GMT
ARG REPO_HOST=repos.azul.com
# Mon, 16 Nov 2026 18:11:26 GMT
ENV LANG=C.UTF-8
# Mon, 16 Nov 2026 18:11:26 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu27-jdk-27.0.1.0.3-5;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Mon, 16 Nov 2026 18:11:26 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu27
# Mon, 16 Nov 2026 18:11:26 GMT
ENV PATH=/usr/lib/jvm/zulu27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 16 Nov 2026 18:11:26 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:a8ea85215dba158c09933d2c53437e503eade277c558f76de4290ce32293adac`  
		Last Modified: Mon, 16 Nov 2026 03:15:03 GMT  
		Size: 67.7 MB (67697816 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6f5ac90c9bef9b9b36bf69b5ca19588c688f8b2ffb1ce7c8263516c70b27645`  
		Last Modified: Mon, 16 Nov 2026 18:11:46 GMT  
		Size: 185.1 MB (185120786 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:27-jdk-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:1b3a5b7251f0e9349784aab233f997a29c3fe4a84cb50ebb27234451ca687270
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.6 KB (9599 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b201c14565f85575ffc10accc99a2df3d4e73d97042569db002eabc6c6067319`

```dockerfile
```

-	Layers:
	-	`sha256:42be53ed4929cfff1cde77e6edb0038cd17496eae6b0ca1fdd19944fd0de7b5b`  
		Last Modified: Mon, 16 Nov 2026 18:11:41 GMT  
		Size: 9.6 KB (9599 bytes)  
		MIME: application/vnd.in-toto+json
