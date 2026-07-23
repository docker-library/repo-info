## `azul-zulu:11-jre-headless-almalinux10`

```console
$ docker pull azul-zulu@sha256:926a35a7908fef3b7bfd8a0cfd3c5f95da6cad8bfae0a7fa27fbf30f7294e9ba
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:11-jre-headless-almalinux10` - linux; amd64

```console
$ docker pull azul-zulu@sha256:5527483ce7a2904e23b1017450b80da746891ccd1bf3b3a4673e7302cfcd72f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.1 MB (134058617 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd28d11684b43f7ce969c19ce50198dde1b77e931db035c2628135e74cd9494c`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 02 Jun 2026 19:04:16 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Tue, 02 Jun 2026 19:04:16 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 22:28:25 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 23 Jul 2026 22:28:25 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 22:28:25 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu11-jre-headless-11.0.32-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Thu, 23 Jul 2026 22:28:25 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
# Thu, 23 Jul 2026 22:28:25 GMT
ENV PATH=/usr/lib/jvm/zulu11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:4224950577242fb7ff1faf31d7a6c1520d455ab1a1eecff8aed5766688091539`  
		Last Modified: Tue, 02 Jun 2026 19:04:32 GMT  
		Size: 68.6 MB (68562462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:217514217ba92c4e93516c99b4afb06417fa5154ca1ddb22700ceb55d643da97`  
		Last Modified: Thu, 23 Jul 2026 22:28:36 GMT  
		Size: 65.5 MB (65496155 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-jre-headless-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:f3f460484a8fd9052834a9a4d54648e8c620816970996737fe7f9338a71ee623
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9232 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd66c815e62b41bad85eefb5ef6e2e2ec54cc379001da395576c5c62ffe0063f`

```dockerfile
```

-	Layers:
	-	`sha256:b7bc62bb9551c61817b97e483a205a51a9e398f59321ced43c28872a9fcd82cb`  
		Last Modified: Thu, 23 Jul 2026 22:28:34 GMT  
		Size: 9.2 KB (9232 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:11-jre-headless-almalinux10` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:1764383280be4722209e08eff0ece132f36bc5b9d31b6b5fdfdba230d746e66a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.5 MB (132474130 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9538a98c88f6419b26d01deacce12702a93a863a6e35700aacb9c92ff7d706e2`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 02 Jun 2026 19:04:37 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Tue, 02 Jun 2026 19:04:37 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 22:29:19 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 23 Jul 2026 22:29:19 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 22:29:19 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu11-jre-headless-11.0.32-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Thu, 23 Jul 2026 22:29:19 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
# Thu, 23 Jul 2026 22:29:19 GMT
ENV PATH=/usr/lib/jvm/zulu11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:11aaeaf9729fbc9690ea62f609dd17fc5d9fca4e16048f27425d411f758066b2`  
		Last Modified: Tue, 02 Jun 2026 19:04:54 GMT  
		Size: 67.1 MB (67141961 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eca597bb6f13ac6f307d1f9cc14deb68e273e80d265505ac322a5b237d8b3f9f`  
		Last Modified: Thu, 23 Jul 2026 22:29:30 GMT  
		Size: 65.3 MB (65332169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-jre-headless-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:1ded8cac4209a87381522337d6a50d7aae06339b1878a504f076646301b26fe1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9326 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b860daec8897f77841634b44fd9d7f6094921dd8d895a1380e19731f1d8986c`

```dockerfile
```

-	Layers:
	-	`sha256:c772b9b123a2e961be87eade2f1892aa46b6361553ff745bb933b2415bc3e7ea`  
		Last Modified: Thu, 23 Jul 2026 22:29:28 GMT  
		Size: 9.3 KB (9326 bytes)  
		MIME: application/vnd.in-toto+json
