## `azul-zulu:17-jdk-almalinux`

```console
$ docker pull azul-zulu@sha256:3799a327c2f0f380f921482bdabf2ca740b3645b18e29f125cfc67978ea8dde9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:17-jdk-almalinux` - linux; amd64

```console
$ docker pull azul-zulu@sha256:c4c04aa088fc46b6c070b9e9106c7f78517895f396f7544a96919ada4b4c2fa5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.0 MB (220957466 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:379bf21b27548c75d0c3bdd8a0c668f3f33d73fcffc4bb918d42c2ab5ebd9d0c`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 27 Oct 2026 17:19:27 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Tue, 27 Oct 2026 17:19:27 GMT
CMD ["/bin/bash"]
# Tue, 03 Nov 2026 00:07:27 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 03 Nov 2026 00:07:27 GMT
ENV LANG=C.UTF-8
# Tue, 03 Nov 2026 00:07:27 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu17-jdk-17.0.21.0.3-5;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Tue, 03 Nov 2026 00:07:27 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
# Tue, 03 Nov 2026 00:07:27 GMT
ENV PATH=/usr/lib/jvm/zulu17/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Nov 2026 00:07:27 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:fbe51e09d58f27fe4ca0bd213ca711d43317974be46fe5dfda5dc62fa95cf57f`  
		Last Modified: Tue, 27 Oct 2026 17:19:44 GMT  
		Size: 69.1 MB (69099275 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7d1080edc46dda36352e0052d586a8c81685b734233033b7f973710e1939d6c`  
		Last Modified: Tue, 03 Nov 2026 00:07:42 GMT  
		Size: 151.9 MB (151858191 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-jdk-almalinux` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:2962f7ee06ffa18649f08f598305d5f1b7387aa11a065f64d6d04e3f60bfa7a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.5 KB (9497 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a22a9fe176cc8a5cd0d5e6bc9facbab91661ba57b975e40e90f5a3d3d015b1a`

```dockerfile
```

-	Layers:
	-	`sha256:a6ffd26ef814b1bf22abd4573a1101178e0165509c6b17cedd0e05b9f5b249aa`  
		Last Modified: Tue, 03 Nov 2026 00:07:39 GMT  
		Size: 9.5 KB (9497 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:17-jdk-almalinux` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:03afdac5742872713b80307cdd78b8c81399a49bde581e331bec72876caf20b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.6 MB (219571231 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fddb184af9d31dc24f10c75b9e12a06cc173c4af5f93e23d5b53cf4ba366c3d`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 27 Oct 2026 17:18:20 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Tue, 27 Oct 2026 17:18:20 GMT
CMD ["/bin/bash"]
# Tue, 03 Nov 2026 00:07:20 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 03 Nov 2026 00:07:20 GMT
ENV LANG=C.UTF-8
# Tue, 03 Nov 2026 00:07:20 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu17-jdk-17.0.21.0.3-5;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Tue, 03 Nov 2026 00:07:20 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
# Tue, 03 Nov 2026 00:07:20 GMT
ENV PATH=/usr/lib/jvm/zulu17/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Nov 2026 00:07:20 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:169cdc535a3129531af940f152493deebb4c9a4cc959e97da7fda2d47c0eb894`  
		Last Modified: Tue, 27 Oct 2026 17:18:36 GMT  
		Size: 67.7 MB (67666511 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4921750fc9cdc63e458d80905de89010f818237e2553af0cb9c6d3052941d609`  
		Last Modified: Tue, 03 Nov 2026 00:07:37 GMT  
		Size: 151.9 MB (151904720 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-jdk-almalinux` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:f30023ebf5624f1dbf1333404829366df7ba9103f75a2c8ba062958488e6f55e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.6 KB (9601 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3e566a448fe9acf4ad6cf238b473b08160147c5d61e906efc7d383e204e203e`

```dockerfile
```

-	Layers:
	-	`sha256:b407cdb38b0ff41fddcad5031355171006eab1cf133c77565ee7521f2070a91d`  
		Last Modified: Tue, 03 Nov 2026 00:07:33 GMT  
		Size: 9.6 KB (9601 bytes)  
		MIME: application/vnd.in-toto+json
