## `clojure:tools-deps-bullseye-slim`

```console
$ docker pull clojure@sha256:baafa28f184614225107040d132c343c8951bd2cfb49747ce245653074974750
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:tools-deps-bullseye-slim` - linux; amd64

```console
$ docker pull clojure@sha256:c4452160cd28469a5a39d5c68947973c0bd565bad4a96f231c703ffaad4d3351
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **178.9 MB (178941209 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9f77de76bde1d96bfe6c051489265d89421d22c5d86d4f2653595a2347360d6`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1783900800'
# Tue, 04 Aug 2026 02:54:30 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:54:30 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:54:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:54:30 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 04 Aug 2026 02:54:30 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:54:44 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 04 Aug 2026 02:54:44 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 04 Aug 2026 02:54:44 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 02:54:44 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 02:54:44 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:ab6b8caf16d7f68b8a98637a233a98f662552e76d428a4510f2c6950bbe017f9`  
		Last Modified: Tue, 14 Jul 2026 00:14:38 GMT  
		Size: 30.3 MB (30259754 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32e5812e848ad129883b8efdce7a13d2de0bd6ae67ccbb9152d00c9df801a568`  
		Last Modified: Tue, 04 Aug 2026 02:55:04 GMT  
		Size: 92.6 MB (92574587 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d35bdab73e400ece3cdcb07c6046dbaea3fc751b1248a49713c5fc4a83367c71`  
		Last Modified: Tue, 04 Aug 2026 02:55:04 GMT  
		Size: 56.1 MB (56105824 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf9ef25fc2a5588bdf42a4734972e0b49eb1fe7611dc62d11509aa11c7e2c395`  
		Last Modified: Tue, 04 Aug 2026 02:55:01 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9644c040821bd2f98fd6c9593511e1158badde24481e50c2271c585db1882afb`  
		Last Modified: Tue, 04 Aug 2026 02:55:01 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:tools-deps-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:6be417992d96bf0f5222b0d100e300c0449da243168370654b5cac7d9c5b8613
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5302618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af62b6b8cc7da63cfa084971a3105cc41e5826b8d0580b4cf48212dca7a95713`

```dockerfile
```

-	Layers:
	-	`sha256:8632fc8098cb1f7524f8fd13dd47419ab22f9a715800c691d56498228d1e8bab`  
		Last Modified: Tue, 04 Aug 2026 02:55:01 GMT  
		Size: 5.3 MB (5285939 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:137bc7be21fd94de2ab8d35f8cd21b4d9c6521720704eb927420f4c69ecfa13b`  
		Last Modified: Tue, 04 Aug 2026 02:55:01 GMT  
		Size: 16.7 KB (16679 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:tools-deps-bullseye-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:b8f0c6f39ee4e55a3e26e868bbc604c60626de26afe563f3630d01ec979886da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.6 MB (176568255 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66caadaf3c077a053a28e7c11c9e25417a7a8467e0d0863dc05e215d43d66e58`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1783900800'
# Tue, 04 Aug 2026 02:54:49 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:54:49 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:54:49 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:54:49 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 04 Aug 2026 02:54:49 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:55:02 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 04 Aug 2026 02:55:02 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 04 Aug 2026 02:55:02 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 02:55:02 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 02:55:02 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:61f836bad84b9e0ba9e3fe1a558be02d0d6378b8ecb4f3c1ef8f656e9e30e1f5`  
		Last Modified: Tue, 14 Jul 2026 00:14:15 GMT  
		Size: 28.7 MB (28748984 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a412432b049699e76681bc59843aa3ac13a1890cf75738dae24ae28281ff3fec`  
		Last Modified: Tue, 04 Aug 2026 02:55:23 GMT  
		Size: 91.5 MB (91542247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b960dde18bb1669389a051ef0007c7adb8e96b81186446d9a308565d71117beb`  
		Last Modified: Tue, 04 Aug 2026 02:55:22 GMT  
		Size: 56.3 MB (56275982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a81f01cc812166158a0427efe12529d62f3286170669e5ef40a3e8464417a4d`  
		Last Modified: Tue, 04 Aug 2026 02:55:20 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ce2cb235b2bfe7057d73cc9167cc7ba7391738bfe76fa184da1a90f2bae749b`  
		Last Modified: Tue, 04 Aug 2026 02:55:20 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:tools-deps-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:6ef6f98eb656f945821975fb1db679428ee6e090b72103420959ca115ea067b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5308513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67ac2239a641b237fae333e608ff24136c1e0bdb42be1f95e10dea96858d5db2`

```dockerfile
```

-	Layers:
	-	`sha256:106c06800845d3d6b17aad9ff566a4ed0a792270a1432cadfde0cb5f11ea028e`  
		Last Modified: Tue, 04 Aug 2026 02:55:20 GMT  
		Size: 5.3 MB (5291692 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8e5f322779837d01566270a1cedbcbcf982a50ec2f5b6ec511bd1fadadfb8507`  
		Last Modified: Tue, 04 Aug 2026 02:55:20 GMT  
		Size: 16.8 KB (16821 bytes)  
		MIME: application/vnd.in-toto+json
