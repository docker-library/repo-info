## `clojure:temurin-17-trixie`

```console
$ docker pull clojure@sha256:518de1ce6a52eab675977afcf7c84ddf1153414200248c13c836e75acefb9b69
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-17-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:77f0f5e4d7836b60348c89d09d030efa37b7d79cdf9d70d5f36713133cc6d1f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.8 MB (277790237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a40426eb5cb25be4e0207676292811854dc814e6c85897618045f02e1225d458`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 01:18:10 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 01:18:10 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 01:18:10 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 01:18:10 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 21 Oct 2026 01:18:10 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 01:18:26 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 21 Oct 2026 01:18:26 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 21 Oct 2026 01:18:26 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 01:18:26 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 01:18:26 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:8d0037029946d2c6dabce18eceda79c533c5797ed1ee86f94084cb8cddaeea91`  
		Last Modified: Tue, 20 Oct 2026 23:30:54 GMT  
		Size: 49.4 MB (49393622 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8079809aee59d6890a5310021d8dcedbeeac3a9977f9971942dae49d8c83481`  
		Last Modified: Wed, 21 Oct 2026 01:18:46 GMT  
		Size: 145.8 MB (145825482 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76be22563ef12e3f46aa265cd358562252068b6d7f317b237f62a67083f9508a`  
		Last Modified: Wed, 21 Oct 2026 01:18:49 GMT  
		Size: 82.6 MB (82570090 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b72a9d261bf3be09e8904d7070ef813ea0ebaf5682cc98c7f5d531e83c0bbc4c`  
		Last Modified: Wed, 21 Oct 2026 01:18:46 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29f4f4e45e5127a95b6e6c51820f18f8f2838b6139ebcc0a2113f49e09949c02`  
		Last Modified: Wed, 21 Oct 2026 01:18:46 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:4b3dafbf7f975b402dba27a6c0411bbc92cf04f0339536acdc36ab03a5127927
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7493450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:849c47f0d5f3bfc15d711611b1dd7c88e8a4eb6a75a427c10e51fb6dfc27ca20`

```dockerfile
```

-	Layers:
	-	`sha256:156d84402cb92b3187a347c82df77047a4b62200b778688adb1996a982d2bd0b`  
		Last Modified: Wed, 21 Oct 2026 01:18:46 GMT  
		Size: 7.5 MB (7477543 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:20bb0ea4cf648b429e7b2d551ecea09e1e3cec0e21e1393441161e8925e0e4db`  
		Last Modified: Wed, 21 Oct 2026 01:18:46 GMT  
		Size: 15.9 KB (15907 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:5b6e3fbde4f73d8ec5f88f480d0581c014795e84e1418d8dbb89008ddb8020ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.8 MB (276804212 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97364247ef7a57d6ad996e5a7a328ae92799b4a647f92e34aca879e91a6a1416`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 01:24:16 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 01:24:16 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 01:24:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 01:24:16 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 21 Oct 2026 01:24:16 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 01:24:33 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 21 Oct 2026 01:24:34 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 21 Oct 2026 01:24:34 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 01:24:34 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 01:24:34 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:229b15d702220d963eaa48bcd8eab0ee7aa8f52996309c59cf44fce7deec3869`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 49.8 MB (49761602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e848b8961a44b69e8c42cf8c2d358a45013c5630051373d4850658fc84d2c75`  
		Last Modified: Wed, 21 Oct 2026 01:24:51 GMT  
		Size: 144.6 MB (144648236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d551efba26dacf9d3b9aa28d5f58080c72984965ff005b420ee959605dfef6d`  
		Last Modified: Wed, 21 Oct 2026 01:24:56 GMT  
		Size: 82.4 MB (82393330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbc955f40cbcc4d9a59c393073a69f81e149660494f9494e49f46d0c7a5b944e`  
		Last Modified: Wed, 21 Oct 2026 01:24:53 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f02bbdbc1e6e7938da944a164af0cf8252909d72cae10f2cb45d54280e1255fd`  
		Last Modified: Wed, 21 Oct 2026 01:24:53 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:3f00b935058dbcd2bc9beeabdabb7f57f1211b8a37af765273ba0c7c56b2953a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7499962 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:031dd81e0977e8790b2f0d8c748c88b608ce47f789e485cdec64a8d3d41cb468`

```dockerfile
```

-	Layers:
	-	`sha256:48a475b706dc51a12c28d3b82598909d38c34e00fe92e1b0adcd2c31b5d40328`  
		Last Modified: Wed, 21 Oct 2026 01:24:54 GMT  
		Size: 7.5 MB (7483936 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7be2b4f87494d723ca508a9e37690b8502983566e58cdadd1aacf5b0f9810177`  
		Last Modified: Wed, 21 Oct 2026 01:24:53 GMT  
		Size: 16.0 KB (16026 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:0432280dfd9589e0df380cb0018785edfe1d64c2042133965df0d0ea6db083d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **286.9 MB (286875594 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d0062e62278181819f69800ffb16ae4e5143cae073a477eaa53f6e58d58062c`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1791158400'
# Sat, 17 Oct 2026 05:41:31 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 05:41:31 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 05:41:31 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 05:41:31 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 17 Oct 2026 05:41:32 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 05:52:14 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 17 Oct 2026 05:52:15 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 17 Oct 2026 05:52:16 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 17 Oct 2026 05:52:16 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 17 Oct 2026 05:52:16 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:1216778738c2d0f00bc38a90447aff403e59888e07d78e8b1c4f2dde2aa2eded`  
		Last Modified: Tue, 06 Oct 2026 00:16:25 GMT  
		Size: 53.2 MB (53207124 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfb5c47cfb27db05d0aaed926eee151bb64866390720e23d9a7fb266bfd4452b`  
		Last Modified: Sat, 17 Oct 2026 05:46:11 GMT  
		Size: 145.7 MB (145671515 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a217f1194ee02fe0eaf0ff44a40717019bb6980b7772819fdc8acb78e0b4cbeb`  
		Last Modified: Sat, 17 Oct 2026 05:53:02 GMT  
		Size: 88.0 MB (87995913 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:175e6c4f21fcd7b726a5b8dfe4a8577d45294a89ad9a4c6a6b1884eaf397accd`  
		Last Modified: Sat, 17 Oct 2026 05:53:00 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33563df4f3dfdf745a4dbd17c74904ab91e217f42a302459ba02a344667a6e97`  
		Last Modified: Sat, 17 Oct 2026 05:52:59 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:669ecf5feb8eb1a7c80f89add500fe4185c4df18c8d49434d168851f80f2c920
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7499194 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64b7e94fa77b2556464509024a9ad70d6823fb77f695aa520160d76b2375b372`

```dockerfile
```

-	Layers:
	-	`sha256:34658e548fd523c9ca197867f953e7b4bfba37414f0e8bcaedb81af05058722e`  
		Last Modified: Sat, 17 Oct 2026 05:53:00 GMT  
		Size: 7.5 MB (7483239 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e381ccd0d9d9f2f166cf8d313d14ad964734854be362a87c0f4b1cc8b14edc77`  
		Last Modified: Sat, 17 Oct 2026 05:52:59 GMT  
		Size: 16.0 KB (15955 bytes)  
		MIME: application/vnd.in-toto+json
