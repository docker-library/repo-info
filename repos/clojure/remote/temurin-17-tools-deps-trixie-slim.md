## `clojure:temurin-17-tools-deps-trixie-slim`

```console
$ docker pull clojure@sha256:3a3a22d886a86be1da9ef2adfbd6ec01108cb726b97c7ab63b078e5135e74e55
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-17-tools-deps-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:85ce02b5e3ef2ef766f3bfeb501f7b605bc9d49fb6422d361224f4e99e100c9f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.7 MB (244659847 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b35ce90404c5e345b8cc53c716673f16daa6a7e4467d325aedaa5d37e993dc6`
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
# Wed, 21 Oct 2026 01:18:24 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 21 Oct 2026 01:18:24 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 21 Oct 2026 01:18:24 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 01:18:24 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 01:18:24 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8079809aee59d6890a5310021d8dcedbeeac3a9977f9971942dae49d8c83481`  
		Last Modified: Wed, 21 Oct 2026 01:18:46 GMT  
		Size: 145.8 MB (145825482 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c33c4fef0adb7016cfcc6416aeac1bacd81573909c627facda53bf62c2c583ba`  
		Last Modified: Wed, 21 Oct 2026 01:18:45 GMT  
		Size: 69.0 MB (68989745 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1992942ac8d044525d1f8b53fdadd77b6b1cb5d4ee9ee554b4dd909616465965`  
		Last Modified: Wed, 21 Oct 2026 01:18:42 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17fbaedae338938f80119f71292ed435ba7be088cf3db618d99d34fc097abfd7`  
		Last Modified: Wed, 21 Oct 2026 01:18:42 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:7f90cc82d4be9b7a4eae66f562081e4b1fc72698ee7a7ff93d98a84b7fc183f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5278002 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54daf2f56f27e9643465615e04d16053623db801e1cd6a2bbd5abf6d1346fccc`

```dockerfile
```

-	Layers:
	-	`sha256:4160561f617e151471b34277974f415bfdf74fc03f9bd1d5957e3a924209accb`  
		Last Modified: Wed, 21 Oct 2026 01:18:42 GMT  
		Size: 5.3 MB (5262037 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f4e2189fd17cea38e34d9d92e8dca72285ad08f5223078ebf053b15ae448fda6`  
		Last Modified: Wed, 21 Oct 2026 01:18:41 GMT  
		Size: 16.0 KB (15965 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:70c64dfa600a024d63eec0a3628b82b36c096eee0bfccb835b1f6c863145133d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.7 MB (243655343 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:922b904c2560ba1c9587b7d30b07f9d9e12086a87ac7be059320b1627f20081f`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 01:24:30 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 01:24:30 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 01:24:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 01:24:30 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 21 Oct 2026 01:24:30 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 01:24:46 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 21 Oct 2026 01:24:46 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 21 Oct 2026 01:24:46 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 01:24:46 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 01:24:46 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:ddc0c1e36a6793411b6c8d48e1ddad2987405d377da92bcf532ed3181c2e4d62`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 30.2 MB (30200478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7e6ab20f8bc9aa4fc92214a874ca562362375ba6f16572134664a928ee5e72a`  
		Last Modified: Wed, 21 Oct 2026 01:25:10 GMT  
		Size: 144.6 MB (144648246 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c14fd10f083e9d09267faa97f1a996a378e64add15d580f1bcf32f346dd03491`  
		Last Modified: Wed, 21 Oct 2026 01:25:09 GMT  
		Size: 68.8 MB (68805575 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c83c7f3f179249d236c367ad7a940a045a97f3ce5d859b5c2da54208ef706fd`  
		Last Modified: Wed, 21 Oct 2026 01:25:05 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00a3f1fbb6d173faf18bd486773881b80c939d4101236c0940820cad4e33aeb5`  
		Last Modified: Wed, 21 Oct 2026 01:25:05 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:76a4f35a338a18b7e839f2e1035d9e29e875872d29a5142d7fae4ab006ea4870
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5283880 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3beac17f57e3f18f2ee7a5f9d3ac8937177fde0640128b8fdf59c30b36554acb`

```dockerfile
```

-	Layers:
	-	`sha256:008a0a684dd64f1842faaba0f3fb68ceeb2c05e165b54025266e996e42ce0505`  
		Last Modified: Wed, 21 Oct 2026 01:25:06 GMT  
		Size: 5.3 MB (5267798 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a056cd0d6a11e57cc8e41c457c9bffa58b1ad466b45fe85a96635e377fd9f926`  
		Last Modified: Wed, 21 Oct 2026 01:25:05 GMT  
		Size: 16.1 KB (16082 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:e45f000dfc486f9212985a91c835ed63c80ded9f5ab8b2e6d90e34b17ba29190
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.7 MB (253743346 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:852646d4891277fb290e36deba47e18f5bfa8ce49e9cc85f20b7f309aea1909e`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 10:22:54 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 10:22:54 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 10:22:54 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 10:22:54 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 21 Oct 2026 10:22:55 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 10:31:39 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 21 Oct 2026 10:31:40 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 21 Oct 2026 10:31:41 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 10:31:41 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 10:31:41 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:5e4eb9dc9f650fb59b641178db89dd4b48ea020427f346ce7f9d30a6b89bcd7e`  
		Last Modified: Tue, 20 Oct 2026 23:35:12 GMT  
		Size: 33.7 MB (33651935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b14205fbba26894adf902cfcd4da08f03dbf8cc5016c01e991ea6e329381c7af`  
		Last Modified: Wed, 21 Oct 2026 10:28:12 GMT  
		Size: 145.7 MB (145671534 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b43bb4f26011f63203de672561ea2aa44f1ad30bcde3145257902269eece8f1d`  
		Last Modified: Wed, 21 Oct 2026 10:32:37 GMT  
		Size: 74.4 MB (74418834 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d49ef48c93aaf9fe0f6f70f5f0fa11dfcf81f83185b624c179499837b8cd6988`  
		Last Modified: Wed, 21 Oct 2026 10:32:34 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ad80b6c30a7671335fef099cbadd9c01c49d924a4b7b2accf4eca2ca4ca58a6`  
		Last Modified: Wed, 21 Oct 2026 10:32:34 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:87c4c675489199b4a61c289a25af4fbbc3f9a0e0851c50ae35447845a24c2169
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5282422 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6562f17c778925fd916d8eaf462434d27b073f0bc0e4cedf9d137fae03eed134`

```dockerfile
```

-	Layers:
	-	`sha256:03319837d34dcf9de660ffc6bc9748330663a7d15b950b2a66e610128b9a32fa`  
		Last Modified: Wed, 21 Oct 2026 10:32:36 GMT  
		Size: 5.3 MB (5266408 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a37c5979e0482298405c3aa19a7a730363efe67e54dc35a6337820c98f1c463d`  
		Last Modified: Wed, 21 Oct 2026 10:32:35 GMT  
		Size: 16.0 KB (16014 bytes)  
		MIME: application/vnd.in-toto+json
