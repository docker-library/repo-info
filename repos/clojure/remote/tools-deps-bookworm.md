## `clojure:tools-deps-bookworm`

```console
$ docker pull clojure@sha256:b1931983fe1b3bde18dd3bfd3dc5929b4b7c2f056b6e8bc6931b795dca0ce1f0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:tools-deps-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:ddfb2c8801bd5d618c0a5b72379f6b48319ad8ff9798cb6a5d6ec21fe8f5d879
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.3 MB (219313820 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05749206d4f05768cc0bc93b878296c4fa40de7ee770d6608ec79c93b69e017c`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Fri, 02 Oct 2026 02:48:23 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 02:48:23 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 02 Oct 2026 02:48:23 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 02:48:23 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 02 Oct 2026 02:48:24 GMT
WORKDIR /tmp
# Fri, 02 Oct 2026 02:48:38 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 02 Oct 2026 02:48:38 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 02 Oct 2026 02:48:38 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 02 Oct 2026 02:48:38 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 02 Oct 2026 02:48:38 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:eaac70c68abdf6ffacf6de10d31ed9de4813505d1a794eb7393cb27fceb624a6`  
		Last Modified: Sat, 19 Sep 2026 00:03:03 GMT  
		Size: 48.5 MB (48503440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1628c1fd0c6b992c57720af06d83c403696ad603be63bc9f71de7c1c9c918e32`  
		Last Modified: Fri, 02 Oct 2026 02:49:01 GMT  
		Size: 92.6 MB (92618061 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3404cfcdabb5db726d4e6bd357b025dd0b0aa37907d920d365ef7ce1a207c14`  
		Last Modified: Fri, 02 Oct 2026 02:49:00 GMT  
		Size: 78.2 MB (78191274 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6ac48f9a64bbaa71abdbc7e8ffce7ba52a2be31c0d491585a40532ee6bf0e85`  
		Last Modified: Fri, 02 Oct 2026 02:48:57 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:734f9c474f572eb568b35f36e9da314cc2124937662c2efe2ac0675a04213b36`  
		Last Modified: Fri, 02 Oct 2026 02:48:57 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:tools-deps-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:74f1e917856c1314f638c4c78b5267f8bdb71369c52d5b519834a4abaeee33a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7367961 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9ef246b1702b96496475f0e046f1da90e5f2a0d09230a89cf01a8951cf7f6e7`

```dockerfile
```

-	Layers:
	-	`sha256:928fad6e6cb7ba3ed7e9f659969cb6ce44e522d4bae6e04a66dcfc6f027538e7`  
		Last Modified: Fri, 02 Oct 2026 02:48:57 GMT  
		Size: 7.4 MB (7350036 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8b41fce30df46e3860e94b5ceb846ccdc2d8c2dafa3d54f7aec9afe5be03228b`  
		Last Modified: Fri, 02 Oct 2026 02:48:57 GMT  
		Size: 17.9 KB (17925 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:tools-deps-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:4989428f83757b629e32859a98378e0ee6d10e5ba1bb91122d1e3266d0027835
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.1 MB (218094147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92fb1fb38c33afd103a9c21b18e33d18298f9b4a0ae6a90cb54da27af7fdb6b0`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1789689600'
# Fri, 02 Oct 2026 02:48:13 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 02:48:13 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 02 Oct 2026 02:48:13 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 02:48:13 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 02 Oct 2026 02:48:13 GMT
WORKDIR /tmp
# Fri, 02 Oct 2026 02:48:29 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 02 Oct 2026 02:48:29 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 02 Oct 2026 02:48:29 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 02 Oct 2026 02:48:29 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 02 Oct 2026 02:48:29 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:450fe15cad1eddfa7c19e4191f4de2d5c46b0c201ddee1db8d6f41d2fec7a742`  
		Last Modified: Sat, 19 Sep 2026 00:02:48 GMT  
		Size: 48.4 MB (48389910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d4bcb8dc279756809a1f97a4bf6a7ab397aa53b0b7839d1efbf334f13435479`  
		Last Modified: Fri, 02 Oct 2026 02:48:52 GMT  
		Size: 91.5 MB (91528874 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd212fbe9f3a57093af38b8005adc61cddc554a44b6b10c3973d5c3795fb0caa`  
		Last Modified: Fri, 02 Oct 2026 02:48:52 GMT  
		Size: 78.2 MB (78174323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a25ffeed248c15703a9702b2e6ccdd9b0e7b19ddd5b0878e85020bc9419ccfbf`  
		Last Modified: Fri, 02 Oct 2026 02:48:48 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab600a9aaa26ac4fb76ec86c580e53b2fbe9bf23b68f4543e3827d3cf61e4273`  
		Last Modified: Fri, 02 Oct 2026 02:48:48 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:tools-deps-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:1e79c6587b04b3861f0cf4648fd6e3da53c83a79fe8660a84816a408e25c0f11
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7373982 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe939e3e47b4b0bd20917c30561ce62d92f4367d193de3ae6936be633af9e85a`

```dockerfile
```

-	Layers:
	-	`sha256:3776c462c4143c8c4071c9137b22da62eed7c0d32628447ecc2bc4c3b71df112`  
		Last Modified: Fri, 02 Oct 2026 02:48:49 GMT  
		Size: 7.4 MB (7355868 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:acd1bc167a439fe3bff93d0e69a12d817b26eefc02cebfcde8fb547a11294a43`  
		Last Modified: Fri, 02 Oct 2026 02:48:48 GMT  
		Size: 18.1 KB (18114 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:tools-deps-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:7391da455217cb9655dfe6d3d6351eff31a4543ee5de116c7d52e2d0bbada686
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **227.6 MB (227599144 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0b95d5c6db6df0822b997ac469e976347abb8c0fa46634cb81ec3d8466fb991`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1789689600'
# Sat, 26 Sep 2026 03:39:05 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 26 Sep 2026 03:39:05 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 26 Sep 2026 03:39:05 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 26 Sep 2026 03:39:05 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 26 Sep 2026 03:39:06 GMT
WORKDIR /tmp
# Sat, 26 Sep 2026 05:32:18 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 26 Sep 2026 05:32:19 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 26 Sep 2026 05:32:19 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 26 Sep 2026 05:32:19 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 26 Sep 2026 05:32:19 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:303f9548080ec7733e94ce124ddb2d901dc024b0db2d3e171bdfe62a1d04513b`  
		Last Modified: Sat, 19 Sep 2026 00:02:50 GMT  
		Size: 52.3 MB (52349305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da04e914040a479971a3ed1caeca790017eb916416f5fcef351c9f764d805fc2`  
		Last Modified: Sat, 26 Sep 2026 03:43:15 GMT  
		Size: 91.3 MB (91256264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9781f7ecf9c5debe018ef4de0062cc427f154200b852b27e03473418d4782272`  
		Last Modified: Sat, 26 Sep 2026 05:32:57 GMT  
		Size: 84.0 MB (83992534 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48346f5bc238c2b9d574be23e7eb21cbd80f7203a51d773f35c393ac8a18af5d`  
		Last Modified: Sat, 26 Sep 2026 05:32:55 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a0d13fc462bdcf82f4137640d05b6f8d90c73aa987139de00d19809de131795`  
		Last Modified: Sat, 26 Sep 2026 05:32:55 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:tools-deps-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:ca1aba4db69afc82c6e9ea98bc6062b4a32cdf0ed8765a475ff8cddeb2af91ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7356607 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e2f093f247c40f78a1a82b354261ea8a6ea290f99808e05370668373564f6ec`

```dockerfile
```

-	Layers:
	-	`sha256:90d18434d786a8e1f46c20d4933e0a409bf996efba0c4a22f18be28da5fcb7b1`  
		Last Modified: Sat, 26 Sep 2026 05:32:55 GMT  
		Size: 7.3 MB (7338598 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f4e22c13bb46c23825ee75670121803c240ff61a62ec84a257a151174491e83e`  
		Last Modified: Sat, 26 Sep 2026 05:32:55 GMT  
		Size: 18.0 KB (18009 bytes)  
		MIME: application/vnd.in-toto+json
