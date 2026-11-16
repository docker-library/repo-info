## `azul-zulu:25-headless-almalinux10`

```console
$ docker pull azul-zulu@sha256:664df51bb786f7820deb7c5eddeade40fd2d4d66c58255afa325a2c635ee5c5e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:25-headless-almalinux10` - linux; amd64

```console
$ docker pull azul-zulu@sha256:8d96626356b99261202dcec606e489e03109b762f76442aac535ce18bd604b29
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.5 MB (252512900 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7af00353176de37aff88ea0f857e863016c8c2b07d1c286a82c1a8125bd452d`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 16 Nov 2026 17:37:04 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Mon, 16 Nov 2026 17:37:04 GMT
CMD ["/bin/bash"]
# Mon, 16 Nov 2026 18:11:09 GMT
ARG REPO_HOST=repos.azul.com
# Mon, 16 Nov 2026 18:11:09 GMT
ENV LANG=C.UTF-8
# Mon, 16 Nov 2026 18:11:09 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu25-jdk-headless-25.0.5.0.3-5;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Mon, 16 Nov 2026 18:11:09 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
# Mon, 16 Nov 2026 18:11:09 GMT
ENV PATH=/usr/lib/jvm/zulu25/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 16 Nov 2026 18:11:09 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d3706e31ba51bfd08aeb09ac0ebbf184e0118db10938a31a3f2e81cb6a30eb58`  
		Last Modified: Sun, 15 Nov 2026 10:39:35 GMT  
		Size: 69.1 MB (69125779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfe4385f0c490e7de8e84940ac839753026d3e733832d15f7fa8f6aed40ea975`  
		Last Modified: Mon, 16 Nov 2026 18:11:28 GMT  
		Size: 183.4 MB (183387121 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-headless-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:22d5f07d95e365270264c64847ce1b0ec768b1f40ab3bcfa63b85ed832eb0e63
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9252 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a55da7827e4fae5c294651af507102c286d5fda55867ebc4873a88861205067d`

```dockerfile
```

-	Layers:
	-	`sha256:34f17c692b88ffc7004ccec0bc7990f77ced53931ce518ef8ea4cded058389f4`  
		Last Modified: Mon, 16 Nov 2026 18:11:24 GMT  
		Size: 9.3 KB (9252 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:25-headless-almalinux10` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:668940990aa4a577b586bacc209c363a36136b9c3439b75ddd7f70abba09eb6d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.2 MB (250192856 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a43480b5e8f75960e888a0a353c1c7b98fccd2afaf2862cfdd791f7b0a6b3247`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 16 Nov 2026 17:37:01 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Mon, 16 Nov 2026 17:37:01 GMT
CMD ["/bin/bash"]
# Mon, 16 Nov 2026 18:11:00 GMT
ARG REPO_HOST=repos.azul.com
# Mon, 16 Nov 2026 18:11:00 GMT
ENV LANG=C.UTF-8
# Mon, 16 Nov 2026 18:11:00 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu25-jdk-headless-25.0.5.0.3-5;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Mon, 16 Nov 2026 18:11:00 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
# Mon, 16 Nov 2026 18:11:00 GMT
ENV PATH=/usr/lib/jvm/zulu25/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 16 Nov 2026 18:11:00 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:a8ea85215dba158c09933d2c53437e503eade277c558f76de4290ce32293adac`  
		Last Modified: Mon, 16 Nov 2026 03:15:03 GMT  
		Size: 67.7 MB (67697816 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:378dc01038f6f1c62a1070575da9c58c50be4c4c7c14fcc3a9c8c2e06772bafe`  
		Last Modified: Mon, 16 Nov 2026 18:11:19 GMT  
		Size: 182.5 MB (182495040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-headless-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:016664e19c97c10658cc37186a07d75e36e9fc013d18ea757fff02c55e0230cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9344 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1bf82394611004e9d049be5f3858bfd19dc3740d4feebca3e342f88dca48a08b`

```dockerfile
```

-	Layers:
	-	`sha256:28df6075cb814831d56daaadd8b73c0e27effcee7e3d6b2811cc71c182db554f`  
		Last Modified: Mon, 16 Nov 2026 18:11:15 GMT  
		Size: 9.3 KB (9344 bytes)  
		MIME: application/vnd.in-toto+json
