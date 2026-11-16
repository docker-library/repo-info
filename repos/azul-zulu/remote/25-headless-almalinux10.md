## `azul-zulu:25-headless-almalinux10`

```console
$ docker pull azul-zulu@sha256:73c6ab60a2b1f166f555f7cc3396312f2ab148e20da4817089f3a12566af6241
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:25-headless-almalinux10` - linux; amd64

```console
$ docker pull azul-zulu@sha256:5255a2412fea1701b56bfae8340aa713ff189fd92380dbd886ec234ee01d9bb2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.9 MB (252925828 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0028c4797e23e4d9fecf0c8675bb3a1dd3b3bfb4f2a21e42c3a03b264b3d5bf4`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 16 Nov 2026 21:44:20 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Mon, 16 Nov 2026 21:44:20 GMT
CMD ["/bin/bash"]
# Mon, 16 Nov 2026 22:09:56 GMT
ARG REPO_HOST=repos.azul.com
# Mon, 16 Nov 2026 22:09:56 GMT
ENV LANG=C.UTF-8
# Mon, 16 Nov 2026 22:09:56 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu25-jdk-headless-25.0.5.0.3-5;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Mon, 16 Nov 2026 22:09:56 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
# Mon, 16 Nov 2026 22:09:56 GMT
ENV PATH=/usr/lib/jvm/zulu25/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 16 Nov 2026 22:09:56 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:f7eb2ddfe716bbe5a789e107fd8eb761cff0982c7444fc8f71ff2bd32513a061`  
		Last Modified: Mon, 16 Nov 2026 21:44:37 GMT  
		Size: 69.4 MB (69370480 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec75760b2142625229a26e3a8663d86a7111a9835d623ac027aa67b027a3473a`  
		Last Modified: Mon, 16 Nov 2026 22:10:14 GMT  
		Size: 183.6 MB (183555348 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-headless-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:b4dd3e14e1ba48f129f67013410b390f1cce42078511aaf7988cfa69829b886e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9251 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c216eddf6591733cf6b1d99b0eee269f0077bf8c6416a5b7f4ac4b2e3e6f4e1`

```dockerfile
```

-	Layers:
	-	`sha256:ea2a559bbe15d93d0753072cf4439eed15d3b62048d17e4b25f05dea49615048`  
		Last Modified: Mon, 16 Nov 2026 22:10:10 GMT  
		Size: 9.3 KB (9251 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:25-headless-almalinux10` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:ae8cd048d68c47adff9c21f3f5ce9b4ce5e4fe0b317b020dd6454aa9c0ef64f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.6 MB (250607797 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dea03efb9056b76cde41cc97871f2155f57f5f68553ea60676ee98f3bdd77e39`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 16 Nov 2026 21:44:35 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Mon, 16 Nov 2026 21:44:35 GMT
CMD ["/bin/bash"]
# Mon, 16 Nov 2026 22:09:57 GMT
ARG REPO_HOST=repos.azul.com
# Mon, 16 Nov 2026 22:09:57 GMT
ENV LANG=C.UTF-8
# Mon, 16 Nov 2026 22:09:57 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu25-jdk-headless-25.0.5.0.3-5;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Mon, 16 Nov 2026 22:09:57 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
# Mon, 16 Nov 2026 22:09:57 GMT
ENV PATH=/usr/lib/jvm/zulu25/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 16 Nov 2026 22:09:57 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:393cd084864e1edb3d8b62a1faef8c3a32a405ba52f353858c2898cdbb0f08cb`  
		Last Modified: Mon, 16 Nov 2026 21:44:52 GMT  
		Size: 68.0 MB (67950574 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea4437807e7ae0b00293e8137df79d1bb1318faba25e1c12725767dadd45a1c0`  
		Last Modified: Mon, 16 Nov 2026 22:10:18 GMT  
		Size: 182.7 MB (182657223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-headless-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:fc3020c809063353cbb25c631d869e32d687db043d4573deb283fe7643ee435e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9344 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f762c02633bbecfd61e6a40a5cd9cbb09913caf5a77ffca38d43a54776d0d798`

```dockerfile
```

-	Layers:
	-	`sha256:379837bb1705834ebad460615868b4f1505427d8ff79c973db608e78ebb5f863`  
		Last Modified: Mon, 16 Nov 2026 22:10:13 GMT  
		Size: 9.3 KB (9344 bytes)  
		MIME: application/vnd.in-toto+json
