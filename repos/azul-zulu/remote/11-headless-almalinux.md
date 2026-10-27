## `azul-zulu:11-headless-almalinux`

```console
$ docker pull azul-zulu@sha256:c759ed1ec0d838d17735ad3c9531eb88532453041aa050dc0ce4ee4b35aa7f4d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:11-headless-almalinux` - linux; amd64

```console
$ docker pull azul-zulu@sha256:ba0f62d6cb7765db506f2b109074157dd0c4cc706244050c67e734d7f20574cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.8 MB (215823677 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55590dbdfe283347dcb94ed3878ce1ad8a88b1b8b495273978a1aa935cae3901`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 27 Oct 2026 17:19:27 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Tue, 27 Oct 2026 17:19:27 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 17:27:08 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 27 Oct 2026 17:27:08 GMT
ENV LANG=C.UTF-8
# Tue, 27 Oct 2026 17:27:08 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu11-jdk-headless-11.0.33-3;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Tue, 27 Oct 2026 17:27:08 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
# Tue, 27 Oct 2026 17:27:08 GMT
ENV PATH=/usr/lib/jvm/zulu11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 17:27:08 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:fbe51e09d58f27fe4ca0bd213ca711d43317974be46fe5dfda5dc62fa95cf57f`  
		Last Modified: Tue, 27 Oct 2026 17:19:44 GMT  
		Size: 69.1 MB (69099275 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e2814c1c1398a36dd22fa46cbe283d542dc9594f0f015fe786519ac7bb6ba5d`  
		Last Modified: Tue, 27 Oct 2026 17:27:22 GMT  
		Size: 146.7 MB (146724402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-headless-almalinux` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:1f195fcb361a364b66be0c2cc09e024c8ff048680ae42b07d9995e8cee83f157
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9239 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a61f8c4657a2d209fdd2e3ba3b4ec67e4091161d93cb27c5ce6f755d9d58d13`

```dockerfile
```

-	Layers:
	-	`sha256:4029819dd8800cb28e414b7a3d3248794a16ec953a7d8d922db82940d0b0a2e7`  
		Last Modified: Tue, 27 Oct 2026 17:27:19 GMT  
		Size: 9.2 KB (9239 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:11-headless-almalinux` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:ffc5a249f0cda34dff09c8e294808ca85882ae4f0f715d26d92e54cd9f2c0cad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.1 MB (214069122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1469eaaa1394860aea272d1c31bc095812f5c270f91a0586cd6018fc5b9f36b`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 27 Oct 2026 17:18:20 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Tue, 27 Oct 2026 17:18:20 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 17:22:27 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 27 Oct 2026 17:22:27 GMT
ENV LANG=C.UTF-8
# Tue, 27 Oct 2026 17:22:27 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu11-jdk-headless-11.0.33-3;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Tue, 27 Oct 2026 17:22:27 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
# Tue, 27 Oct 2026 17:22:27 GMT
ENV PATH=/usr/lib/jvm/zulu11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 17:22:27 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:169cdc535a3129531af940f152493deebb4c9a4cc959e97da7fda2d47c0eb894`  
		Last Modified: Tue, 27 Oct 2026 17:18:36 GMT  
		Size: 67.7 MB (67666511 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3bed5a958f8a21a46d4526153df06d3a72e7387f64f1aa8fd619f16d0f0aefd`  
		Last Modified: Tue, 27 Oct 2026 17:22:42 GMT  
		Size: 146.4 MB (146402611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-headless-almalinux` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:ccbb35b0f4138f63edb9866d834a1ad5e7bf0a2ba3bec2e2d0ad3f3cc7d97381
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9328 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc303e692aa74013805766ba7e6399c65505fda40d6db9aca04d1a89641b0324`

```dockerfile
```

-	Layers:
	-	`sha256:6f6ab5951aa36c9de0fa8fdc4ed876f08bb8c405460b5a454bd93705dad787d1`  
		Last Modified: Tue, 27 Oct 2026 17:22:39 GMT  
		Size: 9.3 KB (9328 bytes)  
		MIME: application/vnd.in-toto+json
