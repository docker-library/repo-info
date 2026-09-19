## `clojure:temurin-17-trixie`

```console
$ docker pull clojure@sha256:fa75814493fca09abcbf24dcd16952341b7a5262260428e2d2575a990d7143b0
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
$ docker pull clojure@sha256:b8b0bd36b6776fc044f23abc1ebe53c35fd243e0d1c7d4ea94a781cb08650a43
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.8 MB (277770045 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41c96f91283c55fc7afa77dd1fa73bc59b3c9fd5e66de3030b76a8376b333d22`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 01:15:16 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 01:15:16 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 01:15:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:15:16 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 19 Sep 2026 01:15:16 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 01:15:32 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 19 Sep 2026 01:15:32 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 19 Sep 2026 01:15:32 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 19 Sep 2026 01:15:32 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 19 Sep 2026 01:15:32 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:6eefb2f5d3e91a6cfc577476bbec26bb63f0d0fc31f904493f400833783aa2c2`  
		Last Modified: Sat, 19 Sep 2026 00:05:52 GMT  
		Size: 49.4 MB (49379699 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:452086c20b6f07af243abdc4bcc2983f24e7017eeb63141b7836806db7d0f582`  
		Last Modified: Sat, 19 Sep 2026 01:15:56 GMT  
		Size: 145.8 MB (145822695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdd738d64d8f297833945fc1cbed26182290028209691409c4299e87cd32e5a3`  
		Last Modified: Sat, 19 Sep 2026 01:15:55 GMT  
		Size: 82.6 MB (82566609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81ff0dbc86c910038d17d5243d1172481c34d6562fd945e84edabdc83eabf0fc`  
		Last Modified: Sat, 19 Sep 2026 01:15:51 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:622c6e59991df969565305d990023167e134c459b36672d9ea8d2fca9ff5e7b0`  
		Last Modified: Sat, 19 Sep 2026 01:15:51 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:4abea1a39a43a95ffca1f9b3761e7e1612354e12af67439db42614ae467bce16
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7494720 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0873abb4577b7444dfbc65862fdf203d0bdb8173340053028cc6e6da9e2a428`

```dockerfile
```

-	Layers:
	-	`sha256:5e141c7fffefb9ca8eb3717ebfbe33092c5c8e14191396022ef64c3381b84c1f`  
		Last Modified: Sat, 19 Sep 2026 01:15:52 GMT  
		Size: 7.5 MB (7478812 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:28b594df3e777b152f3881cdfc041fdb17122a9f0d1bbda66fc2bf063df5d172`  
		Last Modified: Sat, 19 Sep 2026 01:15:51 GMT  
		Size: 15.9 KB (15908 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:1fbcd4907f7b40038f7903d34aa5f14aeb296dfdad19239b82029fae491574b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.8 MB (276786963 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b17d489c2b7b8564ace2d037788432b65f0e53eada770845cecb14921807a18`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 01:22:24 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 01:22:24 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 01:22:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:22:24 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 19 Sep 2026 01:22:24 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 01:22:41 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 19 Sep 2026 01:22:41 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 19 Sep 2026 01:22:41 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 19 Sep 2026 01:22:41 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 19 Sep 2026 01:22:41 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:ccd9dba13ae33c050c13176f84743269a9457dcb0cfd091e368aa5131dd9e9c7`  
		Last Modified: Sat, 19 Sep 2026 00:05:44 GMT  
		Size: 49.7 MB (49748836 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:adcfd050eaa8c5f2f1860533bf8b70d44879c0bb68aaeca1728103aae959280e`  
		Last Modified: Sat, 19 Sep 2026 01:23:04 GMT  
		Size: 144.6 MB (144647461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a0abc4a179e4ad4a83c29f9dfb42027ec70a964ba88ab765b2cab80c97ca27d`  
		Last Modified: Sat, 19 Sep 2026 01:23:03 GMT  
		Size: 82.4 MB (82389626 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7dd89e78661b017b33820b5d9f147f96b6d1954fa3b8a30f64de9717487db6a5`  
		Last Modified: Sat, 19 Sep 2026 01:23:00 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87a61d8d8dfb3b3cc3f725d7409c17e1c018b7b5292521d8260f5c0450696890`  
		Last Modified: Sat, 19 Sep 2026 01:23:00 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:bcd1b72ce7fec3f6304f526c1040d1929f060e703081fb84eb0121d31ed93d34
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7501231 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f73aa7ef4966f670dd23bd5cd55b981157531ff1a2962a0700f2918d6da2385`

```dockerfile
```

-	Layers:
	-	`sha256:9f83104ca78c8a6f175935771fdba00ee68df03352c5e5c6c28f30a7ad76bf31`  
		Last Modified: Sat, 19 Sep 2026 01:23:00 GMT  
		Size: 7.5 MB (7485205 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2e06329e89a3f679c1644dcf4aba9777845efded17ff5739e14ce7afdd7c00f7`  
		Last Modified: Sat, 19 Sep 2026 01:23:00 GMT  
		Size: 16.0 KB (16026 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:9ae2373ce730bf00e904760bb77d15dc614f694499b4efb4c8bae4d6b868bb84
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **286.9 MB (286860757 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86e397b4e13edcf7ae5d754ae0c07437e50b42f93e2b7343b550ca965c722db7`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 07:54:29 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 07:54:29 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 07:54:29 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 07:54:29 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 19 Sep 2026 07:54:31 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 08:01:21 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 19 Sep 2026 08:01:22 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 19 Sep 2026 08:01:22 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 19 Sep 2026 08:01:22 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 19 Sep 2026 08:01:22 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:fe57b34d87b4c3538e7b00694a21e5bd450391029c5c22b4da16fbe872c78d51`  
		Last Modified: Sat, 19 Sep 2026 00:05:59 GMT  
		Size: 53.2 MB (53195075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7661c2a8ca6104e076fccf72408bfd48135a2ca63700fd0c23a220367cd034e`  
		Last Modified: Sat, 19 Sep 2026 07:58:05 GMT  
		Size: 145.7 MB (145674257 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b06cd909cb175690b7f39760ab5abe935782970638ea01582eb9d3218975832e`  
		Last Modified: Sat, 19 Sep 2026 08:02:04 GMT  
		Size: 88.0 MB (87990383 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea8bbee2f082dc0ddd13a23887ee9004f63362465f168e52e96d737b4a75ed40`  
		Last Modified: Sat, 19 Sep 2026 08:02:02 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f684f62e3fc8a94f91cfed635dd28159ff1771e845810ee790dabe81eb8f84b3`  
		Last Modified: Sat, 19 Sep 2026 08:02:01 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:142838f9dcfabf223994cf7307ab37d92e56ce9d250e292a3bf557fa46fd0501
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7499187 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7610910c71dadd31d29b89e64194d0d33f35c89a1b6c6c1b03fde3ffb724c23`

```dockerfile
```

-	Layers:
	-	`sha256:12603e5e90096ef4ea8e040926cd61390a2b5f137874ce99f188b2ab2b0c1e21`  
		Last Modified: Sat, 19 Sep 2026 08:02:02 GMT  
		Size: 7.5 MB (7483231 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a663e2dca19aa863fa7c6dfde84f158b1e9991c7bb1a3fd0f2d2c8fb609b8a0b`  
		Last Modified: Sat, 19 Sep 2026 08:02:02 GMT  
		Size: 16.0 KB (15956 bytes)  
		MIME: application/vnd.in-toto+json
