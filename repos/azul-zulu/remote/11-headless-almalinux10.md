## `azul-zulu:11-headless-almalinux10`

```console
$ docker pull azul-zulu@sha256:155468168bcb9ccaaa16b2711fd83cbca2719b705d331245e5fba8fc32147505
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:11-headless-almalinux10` - linux; amd64

```console
$ docker pull azul-zulu@sha256:7f1db4974d4d075cc6393f32b89b40e942847932959f7e5a155b1da5ee92dd84
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.3 MB (215278999 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2732b23d5dd736de0da6d8bc167aeb27b7c7e35c821b329e6ed103f5a5b20d6f`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 02 Oct 2026 18:16:42 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Fri, 02 Oct 2026 18:16:42 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 18:22:02 GMT
ARG REPO_HOST=repos.azul.com
# Fri, 02 Oct 2026 18:22:02 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 18:22:02 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu11-jdk-headless-11.0.32.1-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Fri, 02 Oct 2026 18:22:02 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
# Fri, 02 Oct 2026 18:22:02 GMT
ENV PATH=/usr/lib/jvm/zulu11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 18:22:02 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:aa40d510fc6e470a2f5bd27e447ebfe9df24b41b10a52ccfb13fe5a7e461a36d`  
		Last Modified: Fri, 02 Oct 2026 18:17:00 GMT  
		Size: 68.9 MB (68879554 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f51f76359d73ed7b55ca9988f00ee3051220d3995928599b4505ecaa05cd8411`  
		Last Modified: Fri, 02 Oct 2026 18:22:17 GMT  
		Size: 146.4 MB (146399445 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-headless-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:916345547bbbcfe61edb8d7fd4f87b1f47c214069c1d369d3e89895db7684951
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9245 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4d9edeb8610fbf4ac9d42b32a30d42bd11d3de596fe75dcaa96e86bd5143145`

```dockerfile
```

-	Layers:
	-	`sha256:fa2d1f1540d1801feb77365b927ce4aff36c1738def8db17ede6881fda30e419`  
		Last Modified: Fri, 02 Oct 2026 18:22:13 GMT  
		Size: 9.2 KB (9245 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:11-headless-almalinux10` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:570816c89a17f6a714be27cd6e2dd1901b4dd4e832c1179dfd007ded098ff955
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **213.6 MB (213554333 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:079e70fbf92afa509590888550037bac83189a500236023e2c18a2d3546e9681`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 02 Oct 2026 18:16:16 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Fri, 02 Oct 2026 18:16:16 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 18:22:22 GMT
ARG REPO_HOST=repos.azul.com
# Fri, 02 Oct 2026 18:22:22 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 18:22:22 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu11-jdk-headless-11.0.32.1-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Fri, 02 Oct 2026 18:22:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
# Fri, 02 Oct 2026 18:22:22 GMT
ENV PATH=/usr/lib/jvm/zulu11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 18:22:22 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:72828735570afd8ff6fa969666f806b8b8aad35a219161ae6386607e517a0ff3`  
		Last Modified: Fri, 02 Oct 2026 18:16:33 GMT  
		Size: 67.5 MB (67458184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9474f04dddac71ac016884d5cb881df2c0cd77e3641d7557e5e4b837ad1b30bb`  
		Last Modified: Fri, 02 Oct 2026 18:22:38 GMT  
		Size: 146.1 MB (146096149 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-headless-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:2f310881d513aa11263ebf40cbe3fe870eec7ba1299fe90d640a0416717f1bf0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9336 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:494c8ce335e0617ad7496e060253400874dcd9a32688c01715de62aeab027203`

```dockerfile
```

-	Layers:
	-	`sha256:dd739a66ac3ac368e7cace31771ec245eeeec6e2a8264140de9bc351e5f4e7e9`  
		Last Modified: Fri, 02 Oct 2026 18:22:35 GMT  
		Size: 9.3 KB (9336 bytes)  
		MIME: application/vnd.in-toto+json
