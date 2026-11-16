## `azul-zulu:27-headless-almalinux10`

```console
$ docker pull azul-zulu@sha256:141441ef043f585ea2e8ac3fe1d308565a9c2feca16d016c93c15af22839c55a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:27-headless-almalinux10` - linux; amd64

```console
$ docker pull azul-zulu@sha256:d29954b85a4e3cda04ff57f0dac10499c59c01b5b03e90b790b115dd24d3390f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.0 MB (253958341 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f01e39722b704163f50202122e329c15a67fb126495fb075f569ef805938649`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 16 Nov 2026 17:37:04 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Mon, 16 Nov 2026 17:37:04 GMT
CMD ["/bin/bash"]
# Mon, 16 Nov 2026 18:11:34 GMT
ARG REPO_HOST=repos.azul.com
# Mon, 16 Nov 2026 18:11:34 GMT
ENV LANG=C.UTF-8
# Mon, 16 Nov 2026 18:11:34 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu27-jdk-headless-27.0.1.0.3-5;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Mon, 16 Nov 2026 18:11:34 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu27
# Mon, 16 Nov 2026 18:11:34 GMT
ENV PATH=/usr/lib/jvm/zulu27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 16 Nov 2026 18:11:34 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d3706e31ba51bfd08aeb09ac0ebbf184e0118db10938a31a3f2e81cb6a30eb58`  
		Last Modified: Sun, 15 Nov 2026 10:39:35 GMT  
		Size: 69.1 MB (69125779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91cec3b901faa2188cb8ed9e29093f65c487431680bf424bf9ddbb0e70e29560`  
		Last Modified: Mon, 16 Nov 2026 18:11:52 GMT  
		Size: 184.8 MB (184832562 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:27-headless-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:cc919e8719b80d7876ff6f3255933e27a21ca66cd4d056b321af6c222a290fd5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9252 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3af063a60475c77436575c6adbb29fa6c7c89ab29a6f86966e5d9df416324a68`

```dockerfile
```

-	Layers:
	-	`sha256:300a2de219aa79b941e9045f8349826f2e78b9dfa328951bc79896283359cf04`  
		Last Modified: Mon, 16 Nov 2026 18:11:48 GMT  
		Size: 9.3 KB (9252 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:27-headless-almalinux10` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:4191048cea363597767530269254079d64b1e2e512956490129c903afdc087a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.2 MB (252211624 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15f83805655540aa4bc49b077fe2f66e21a334ab181b36010ab4f287363ad7d3`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 16 Nov 2026 17:37:01 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Mon, 16 Nov 2026 17:37:01 GMT
CMD ["/bin/bash"]
# Mon, 16 Nov 2026 18:11:31 GMT
ARG REPO_HOST=repos.azul.com
# Mon, 16 Nov 2026 18:11:31 GMT
ENV LANG=C.UTF-8
# Mon, 16 Nov 2026 18:11:31 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu27-jdk-headless-27.0.1.0.3-5;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Mon, 16 Nov 2026 18:11:31 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu27
# Mon, 16 Nov 2026 18:11:31 GMT
ENV PATH=/usr/lib/jvm/zulu27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 16 Nov 2026 18:11:31 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:a8ea85215dba158c09933d2c53437e503eade277c558f76de4290ce32293adac`  
		Last Modified: Mon, 16 Nov 2026 03:15:03 GMT  
		Size: 67.7 MB (67697816 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fe75b65251a24911bb0509b236f944f61e2c4618c114d375f6691dadc8464e2`  
		Last Modified: Mon, 16 Nov 2026 18:11:50 GMT  
		Size: 184.5 MB (184513808 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:27-headless-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:2c906664af51268c0481f89f79b7d158f9eb977ecb06b7da0d5e013e001b06b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9344 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b679a7c345396512d6ca3650ef3469923dff337b13ac7017288d417b2799f11`

```dockerfile
```

-	Layers:
	-	`sha256:a8e20936ce2ddc2974829f244d700dd51d33c7f87f528c81c3096f6df7e83353`  
		Last Modified: Mon, 16 Nov 2026 18:11:47 GMT  
		Size: 9.3 KB (9344 bytes)  
		MIME: application/vnd.in-toto+json
