## `clojure:temurin-17-bullseye-slim`

```console
$ docker pull clojure@sha256:672747b0f12f0d4df4b9f6485c358298d5d36baf81851f53af2f551520a1bd8a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-17-bullseye-slim` - linux; amd64

```console
$ docker pull clojure@sha256:ed9047f2cbb884f869c09515a9f89c7d4c304d4979ef14a8ba4f39632f7a9af3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **232.3 MB (232280873 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3823497d9938a787c5ce8535b38b51ae8cfeee1d5bb8831e6874b5121b23b59c`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1785715200'
# Tue, 18 Aug 2026 20:45:21 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 20:45:21 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 18 Aug 2026 20:45:21 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 20:45:21 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 18 Aug 2026 20:45:21 GMT
WORKDIR /tmp
# Tue, 18 Aug 2026 20:45:34 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 18 Aug 2026 20:45:34 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 18 Aug 2026 20:45:34 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 18 Aug 2026 20:45:34 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 18 Aug 2026 20:45:34 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:ab75afe6a0f0027cc830f1ca4a2c484e7056871a1adf91bd3a0b73c6ffb517b1`  
		Last Modified: Tue, 04 Aug 2026 23:52:04 GMT  
		Size: 30.3 MB (30259620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e64a2aa4402158125feb3324997a024d29f34fe3846743f4bdc38028e3356c0e`  
		Last Modified: Tue, 18 Aug 2026 20:45:55 GMT  
		Size: 145.9 MB (145905485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbe43dc59c022dbf647e9d401110ded145c88a7690aaf0b4994ae4e1447cb29e`  
		Last Modified: Tue, 18 Aug 2026 20:45:54 GMT  
		Size: 56.1 MB (56114730 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e961cb7034230da4942891a6710a354f6ecc59f3e0c2750ed18d630998ff68b`  
		Last Modified: Tue, 18 Aug 2026 20:45:51 GMT  
		Size: 610.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:407ba60b1e2b70dd615f37230f8b7ca362f84904456443ef90fe55fc9107f974`  
		Last Modified: Tue, 18 Aug 2026 20:45:51 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:93414632b2d57e83f8f62be700e18ed345664f96eaa5f1df5afc990c9209ad50
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5339041 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4fa14501a5c456307fd9b9ef36f7d172a99cfd7d949e43d7de27f30de54feeb5`

```dockerfile
```

-	Layers:
	-	`sha256:c86b4eae8862337cf65dff1776d70b9ac6a28e1fcd9a6f7b214145512c8e6636`  
		Last Modified: Tue, 18 Aug 2026 20:45:52 GMT  
		Size: 5.3 MB (5323052 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:184bea3bc6c04a02d1a90384456c29fa1e7838f5277a5ac8edccebfa64d0aebf`  
		Last Modified: Tue, 18 Aug 2026 20:45:51 GMT  
		Size: 16.0 KB (15989 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-bullseye-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:a17fdba9bd002621f8e85a9df4859b4f71657f2778161ab1c86c6187cc9ba36f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.8 MB (229755519 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59d657167ace2d73e0bba37334ea9d7c30a822912cb101b6995fe972a18222cf`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1785715200'
# Tue, 18 Aug 2026 20:45:35 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 20:45:35 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 18 Aug 2026 20:45:35 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 20:45:35 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 18 Aug 2026 20:45:35 GMT
WORKDIR /tmp
# Tue, 18 Aug 2026 20:45:48 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 18 Aug 2026 20:45:48 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 18 Aug 2026 20:45:48 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 18 Aug 2026 20:45:48 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 18 Aug 2026 20:45:48 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:93e0ff6a69cbbe5e567bea0ae7560cdd816fd4205541e7cb6b0fd3998b169541`  
		Last Modified: Tue, 04 Aug 2026 23:51:59 GMT  
		Size: 28.7 MB (28748907 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a5b4db150a41c9cbf90c47d23808a95b0a8794e6b438901d866cc3aede24f4f`  
		Last Modified: Tue, 18 Aug 2026 20:46:10 GMT  
		Size: 144.7 MB (144724309 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aadbf6fefa84c3c3878c2b74fcbb372acd23f12371d8b8ccf36d2548c7011b6c`  
		Last Modified: Tue, 18 Aug 2026 20:46:09 GMT  
		Size: 56.3 MB (56281263 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa3e61d090b56d8821651db208ed9e2a3b444486a62fb2b0e6aa0319b6bcdd3f`  
		Last Modified: Tue, 18 Aug 2026 20:46:06 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8485da01bdc30b08b0c0fb447ec696f218354061f50dfe239655b4b56917fc1b`  
		Last Modified: Tue, 18 Aug 2026 20:46:06 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:e3e92d99a8021fed0d064a88ee7a467637909d0a59acef8c7acdc7bb55a98ecb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5344891 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f707529d34a195ef481e45f4fdcc2ae5a8a3de5019d3204f05c3331dba54265d`

```dockerfile
```

-	Layers:
	-	`sha256:ae4ca7235e42f5f104abc27f9b33d02505bdad8dbdcfed379afa7b7be6305bb7`  
		Last Modified: Tue, 18 Aug 2026 20:46:07 GMT  
		Size: 5.3 MB (5328784 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:52edf189ae73ab8bf4c342a0bc12001c0c9308a3e4d236751fc1d4842357e719`  
		Last Modified: Tue, 18 Aug 2026 20:46:07 GMT  
		Size: 16.1 KB (16107 bytes)  
		MIME: application/vnd.in-toto+json
