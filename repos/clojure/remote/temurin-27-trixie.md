## `clojure:temurin-27-trixie`

```console
$ docker pull clojure@sha256:05c946d3b563505d2c8f155d5a2148bb1633954dbb1cd374447666379d293b17
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-27-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:61c2ad9208da027902b8a1e164b065cc0112ca2083c4b6f50c7eb6ab99f3c3bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **225.6 MB (225586893 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7990bc7b6cb8958890682af13e5f65d76412e222fce7daeae1ddaf9e58dceacd`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 01:22:39 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 01:22:39 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 01:22:39 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 01:22:39 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 21 Oct 2026 01:22:39 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 01:22:54 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 21 Oct 2026 01:22:54 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 21 Oct 2026 01:22:54 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 01:22:54 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 01:22:54 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:8d0037029946d2c6dabce18eceda79c533c5797ed1ee86f94084cb8cddaeea91`  
		Last Modified: Tue, 20 Oct 2026 23:30:54 GMT  
		Size: 49.4 MB (49393622 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b85f3f9b143b0198f8ffb3290ce34ab53eabd8818be96c055f46fe617745da1b`  
		Last Modified: Wed, 21 Oct 2026 01:23:16 GMT  
		Size: 93.6 MB (93622538 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5a9b7d5f63bac177cec8a5bf077e827905dd26d5e5d0399967e97347c434651`  
		Last Modified: Wed, 21 Oct 2026 01:23:16 GMT  
		Size: 82.6 MB (82569690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa49e5a4dd75054b66a27c476094017fd82161c5598405425ca0525a55aa9302`  
		Last Modified: Wed, 21 Oct 2026 01:23:12 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8c0bebb73b3d0eca5028eb5cd5a99ce0e1d4b3651f69643d759ba0e247ad1ad`  
		Last Modified: Wed, 21 Oct 2026 01:23:13 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:6535080c503f99d1cd12ed7c6c2ee3e92d6110ed08e7e9d26791cd8ff7cf4cdb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7457068 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce09664b97b38a02072d21156d42b321fb21dea36241cb3ed9a0150920803e93`

```dockerfile
```

-	Layers:
	-	`sha256:7e963d11e1381510505e90dc11149e6ac91a47c02bbbb4b041899bb446427bb3`  
		Last Modified: Wed, 21 Oct 2026 01:23:13 GMT  
		Size: 7.4 MB (7441167 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d9308abfff5ea9e49f1abb7d5acc447df19c7c8b76ec17038a5ed3556963035a`  
		Last Modified: Wed, 21 Oct 2026 01:23:12 GMT  
		Size: 15.9 KB (15901 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:3c1df2d42d933d7b98f7a293b8191fbb3e322d9bdad90ad3f8df1ab010b258b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **224.8 MB (224789211 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fd0d2b3309495bab2b3c176e2b7dfe858de9b49a12a01b79aecd9e6c39ff348`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 01:28:54 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 01:28:54 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 01:28:54 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 01:28:54 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 21 Oct 2026 01:28:54 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 01:29:13 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 21 Oct 2026 01:29:13 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 21 Oct 2026 01:29:13 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 01:29:13 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 01:29:13 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:229b15d702220d963eaa48bcd8eab0ee7aa8f52996309c59cf44fce7deec3869`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 49.8 MB (49761602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09c7b3cc3ec8e52ce044e116790b388d5b52a8b64a59a2aba410d9a4adfb1ba7`  
		Last Modified: Wed, 21 Oct 2026 01:29:30 GMT  
		Size: 92.6 MB (92633097 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:486c6714c5f4a2df08d3a108c01012c939e423e895af36c916846a8a21aae889`  
		Last Modified: Wed, 21 Oct 2026 01:29:35 GMT  
		Size: 82.4 MB (82393469 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5146b7145a22985b38909e9cc65ee4340ab65298cc87d16fdfbfd889f5e8b677`  
		Last Modified: Wed, 21 Oct 2026 01:29:32 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a58c5622575cf5226f22008ec9bd599550e816bcb3b872645f0645e200193f57`  
		Last Modified: Wed, 21 Oct 2026 01:29:32 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:df89600e8bda6d15d38d50c704b4c1219ce691133edabfcfc46cbf5d9cc7756f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7463576 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bac877cab702dad12ee45bf95d8a7863a8095cadaa3b8db3c76538eb458e4016`

```dockerfile
```

-	Layers:
	-	`sha256:806bd106022307f67283e0baa55c98a4b00ee66991f26bc3acd73db85669ac1d`  
		Last Modified: Wed, 21 Oct 2026 01:29:32 GMT  
		Size: 7.4 MB (7447557 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c098753e15ef534867dd110b5fdb3033d1db0837e4ebda219d193d86a495d1c3`  
		Last Modified: Wed, 21 Oct 2026 01:29:32 GMT  
		Size: 16.0 KB (16019 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:39404b43d02537c93cc4af297bfcf6e6e53e43fafd8942796a88d7e206e0bd67
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.5 MB (233453494 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e20b05091125b1e5f1a940fb948e30e1b14bf9239d99ad690d1c1cfd63597c60`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1791158400'
# Mon, 12 Oct 2026 18:24:57 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 12 Oct 2026 18:24:57 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Mon, 12 Oct 2026 18:24:57 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 12 Oct 2026 18:24:57 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Mon, 12 Oct 2026 18:24:57 GMT
WORKDIR /tmp
# Mon, 12 Oct 2026 18:33:23 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Mon, 12 Oct 2026 18:33:24 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Mon, 12 Oct 2026 18:33:25 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Mon, 12 Oct 2026 18:33:25 GMT
ENTRYPOINT ["entrypoint"]
# Mon, 12 Oct 2026 18:33:25 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:1216778738c2d0f00bc38a90447aff403e59888e07d78e8b1c4f2dde2aa2eded`  
		Last Modified: Tue, 06 Oct 2026 00:16:25 GMT  
		Size: 53.2 MB (53207124 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66789879b74ef4c50b963b364c5e07afd02510d614ef8efeba36872b53353679`  
		Last Modified: Mon, 12 Oct 2026 18:30:03 GMT  
		Size: 92.3 MB (92255800 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14200b68c85cca86fb653732eca06ed9927d6a6c6706293a3b576091324c47d7`  
		Last Modified: Mon, 12 Oct 2026 18:34:06 GMT  
		Size: 88.0 MB (87989524 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5eb78747636da368b095f7beb7394dd920df111d95ed8de58e6c0ae9d1dfb5c4`  
		Last Modified: Mon, 12 Oct 2026 18:34:04 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:990ee60ffcd27c0b8e35f6459574ec87046bbaa4dfedfb57a9259d247352e3c0`  
		Last Modified: Mon, 12 Oct 2026 18:34:03 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:8e4d41d4b71074e249555d830f9dffa33b2e52559a7a31aaabb19c83510f63cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7446748 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a09ef1d885cd135b0e1f1938835bccb76ce32a95ac39c79ac0a8bf5bb83721b7`

```dockerfile
```

-	Layers:
	-	`sha256:cf34ff3bdeee36573c5bda9dc610e308ff49a8da283b605e9b77bdd75bb6dccd`  
		Last Modified: Sat, 17 Oct 2026 06:57:13 GMT  
		Size: 7.4 MB (7430799 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ee05c6a2be3069810ee43dbbcb7b7ae9953ba1fcbea7256ed178703182d69c8b`  
		Last Modified: Sat, 17 Oct 2026 06:57:13 GMT  
		Size: 15.9 KB (15949 bytes)  
		MIME: application/vnd.in-toto+json
