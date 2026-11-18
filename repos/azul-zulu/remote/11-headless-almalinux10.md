## `azul-zulu:11-headless-almalinux10`

```console
$ docker pull azul-zulu@sha256:163fd0288ccf804bf3dcb305ec08ab9b2694c48f113e37dcf46481e5b0ab6b8f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:11-headless-almalinux10` - linux; amd64

```console
$ docker pull azul-zulu@sha256:8d3d9a8213d0677a2d85c01c1404bd69f8dfbc38e47b2ec6f269b69de323e702
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.3 MB (216305706 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ba0f6a55e4f9aff48a6e798665c8c79b018dd689519ed244bde1cfd399cbb7d`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 16 Nov 2026 21:44:20 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Mon, 16 Nov 2026 21:44:20 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 02:41:09 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 18 Nov 2026 02:41:09 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 02:41:09 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu11-jdk-headless-11.0.33.1-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Wed, 18 Nov 2026 02:41:09 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
# Wed, 18 Nov 2026 02:41:09 GMT
ENV PATH=/usr/lib/jvm/zulu11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 18 Nov 2026 02:41:09 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:f7eb2ddfe716bbe5a789e107fd8eb761cff0982c7444fc8f71ff2bd32513a061`  
		Last Modified: Mon, 16 Nov 2026 21:44:37 GMT  
		Size: 69.4 MB (69370480 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3287681b9d637e2444eccb2d50e0d2a696f961cf15308de60d2f87903cc7f4d4`  
		Last Modified: Wed, 18 Nov 2026 02:41:23 GMT  
		Size: 146.9 MB (146935226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-headless-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:8ba64de77b922d738b5077b8ac347f80d4d4140cd9d43159a5b9e686766c3833
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9245 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75840f26e62fe283a467c7d80f5ed5709c5096486af811c154935017e9dcf609`

```dockerfile
```

-	Layers:
	-	`sha256:ccc0995c6a3c981fd18c2f23c0e1729dc670f9abec734dafce49b9053768042f`  
		Last Modified: Wed, 18 Nov 2026 02:41:19 GMT  
		Size: 9.2 KB (9245 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:11-headless-almalinux10` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:3b2c540b289126fe6314af0eca10602dfcc587b25f505474a797f9980e796049
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.6 MB (214554648 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d090f0d2a585120345a39dd373fdc9e17db12e1dad5726f0c506d1c0f1265483`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 16 Nov 2026 21:44:35 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Mon, 16 Nov 2026 21:44:35 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 02:41:05 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 18 Nov 2026 02:41:05 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 02:41:05 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu11-jdk-headless-11.0.33.1-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Wed, 18 Nov 2026 02:41:05 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
# Wed, 18 Nov 2026 02:41:05 GMT
ENV PATH=/usr/lib/jvm/zulu11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 18 Nov 2026 02:41:05 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:393cd084864e1edb3d8b62a1faef8c3a32a405ba52f353858c2898cdbb0f08cb`  
		Last Modified: Mon, 16 Nov 2026 21:44:52 GMT  
		Size: 68.0 MB (67950574 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:399e2cd612f02f548369d0e1e62ba5dba65d7e9f184be56889d580db82c4ea4a`  
		Last Modified: Wed, 18 Nov 2026 02:41:21 GMT  
		Size: 146.6 MB (146604074 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-headless-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:de9393d36fd37a82131eb37ec7dcbf4f5ab494a4a3915fa3c46388ada10e3c52
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9337 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82a2d9df83131dc78ab4d0d2c09f9b795253289cccea121ef170bc03471fa9ee`

```dockerfile
```

-	Layers:
	-	`sha256:4e638e64c24a1aec44617fff06f1afa095e0c38a8944f2f046a69f02f7881922`  
		Last Modified: Wed, 18 Nov 2026 02:41:17 GMT  
		Size: 9.3 KB (9337 bytes)  
		MIME: application/vnd.in-toto+json
