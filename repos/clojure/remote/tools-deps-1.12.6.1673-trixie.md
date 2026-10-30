## `clojure:tools-deps-1.12.6.1673-trixie`

```console
$ docker pull clojure@sha256:159f9645142126f2a834ab5de376e88fdfb0e4d94219237ac3834344ced48c2e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:tools-deps-1.12.6.1673-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:4298787b1742980c6f0c1191db8d17c1fc090cebdd79c8c360b5a9ffe62b7d82
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **224.6 MB (224577366 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:631996a8fac13524d173a8f23a0916913dd3a6f2da752664861e3153963c53ff`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Thu, 29 Oct 2026 20:06:09 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 29 Oct 2026 20:06:09 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 29 Oct 2026 20:06:09 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Oct 2026 20:06:09 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 29 Oct 2026 20:06:09 GMT
WORKDIR /tmp
# Thu, 29 Oct 2026 20:06:25 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 29 Oct 2026 20:06:25 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 29 Oct 2026 20:06:25 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 29 Oct 2026 20:06:25 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 29 Oct 2026 20:06:25 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:a1d156b0aab5fb07d822a7f4681f6d3ed1689073531c34f5668818c233633f11`  
		Last Modified: Wed, 28 Oct 2026 00:11:26 GMT  
		Size: 49.4 MB (49407895 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe76229198396fd05326bce2bf1f5d4965f812a2235974a5bb615dcb17bd5f33`  
		Last Modified: Thu, 29 Oct 2026 20:06:49 GMT  
		Size: 92.6 MB (92598822 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:524f63fae506d56e23b719b7a63eb72bfcdbc70bbc100abe6366fa034dc761f9`  
		Last Modified: Thu, 29 Oct 2026 20:06:48 GMT  
		Size: 82.6 MB (82569606 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:652f943171e417c9ed9cf6c467d59eae5eab135f1cb2ce04af1436e4f905f291`  
		Last Modified: Thu, 29 Oct 2026 20:06:45 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ae7e330d56d522910415722b25a8438f22e736d859c14a4a56b6b2f2adf4e12`  
		Last Modified: Thu, 29 Oct 2026 20:06:45 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:tools-deps-1.12.6.1673-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:9237fbef73b7a382b6fa8e8a4579162f1f6d9065879086742842178b7d76ab8f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7461392 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3edd8c541138d40a0746e124ae2d99597b55edcdcef182faad17f4fdd271eed3`

```dockerfile
```

-	Layers:
	-	`sha256:4e2ba36093a55b4a7738a554572129fa62ee0894d28f1b013ad3981691ec9802`  
		Last Modified: Thu, 29 Oct 2026 20:06:46 GMT  
		Size: 7.4 MB (7444823 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:841cfe8bf968b5c7591c88887a827b497857d50cdebe78487e971fe1d58fea1c`  
		Last Modified: Thu, 29 Oct 2026 20:06:45 GMT  
		Size: 16.6 KB (16569 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:tools-deps-1.12.6.1673-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:dabd18755166e57524807987cdfe04d5267a5dd615c0a61ff229e1611c1b4482
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **223.7 MB (223695325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc9fbad3b9979361dcdbed1f9a7523f2acab1618b7cc3a7844a904cf360f44e0`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Thu, 29 Oct 2026 20:06:53 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 29 Oct 2026 20:06:53 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 29 Oct 2026 20:06:53 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Oct 2026 20:06:53 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 29 Oct 2026 20:06:53 GMT
WORKDIR /tmp
# Thu, 29 Oct 2026 20:07:10 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 29 Oct 2026 20:07:10 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 29 Oct 2026 20:07:10 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 29 Oct 2026 20:07:10 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 29 Oct 2026 20:07:10 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:dfb68c024d5cdf4872bb7f0be8d63874aa6d0b7a0050f1b06169573e34ea543a`  
		Last Modified: Wed, 28 Oct 2026 00:10:44 GMT  
		Size: 49.8 MB (49776179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79f1be929baa639644f79cc3f02f1ffa3a74e50bb8d55ba0a2089670563844ba`  
		Last Modified: Thu, 29 Oct 2026 20:07:33 GMT  
		Size: 91.5 MB (91525571 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:696a659467a8dcd037e951f0f1766c8d90d027a3f32a9ee25068541469728e3a`  
		Last Modified: Thu, 29 Oct 2026 20:07:33 GMT  
		Size: 82.4 MB (82392532 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d32cd3adbf57ac4d5d6aeb231059a6e821df121b410663674f5aca56cd9303f2`  
		Last Modified: Thu, 29 Oct 2026 20:07:30 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba13c5ed07089747a4ff3ed61fda289a5060d555cf313e68359bf0271438a75f`  
		Last Modified: Thu, 29 Oct 2026 20:07:30 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:tools-deps-1.12.6.1673-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:653f31d561bfc721cea6c6de115999f76a8c9e08142567c8d875886c2515b7b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7467947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:261f820d7247bb75dd3346afb80d8ef20f772c73a005e63649738f1d754860d2`

```dockerfile
```

-	Layers:
	-	`sha256:3ddf8e9209a6015752cc8bea7e4298b6900661920186b9690a80e924ba37898a`  
		Last Modified: Thu, 29 Oct 2026 20:07:30 GMT  
		Size: 7.5 MB (7451237 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ae84d09d2ccdcc899d16700e1a038ede0d73a5789d3a9d1c7258e99d81793311`  
		Last Modified: Thu, 29 Oct 2026 20:07:29 GMT  
		Size: 16.7 KB (16710 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:tools-deps-1.12.6.1673-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:e7d6de4c42410a22df02ad6fc11f10db28d8983d1cd374f198922e40ff666d9a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.3 MB (231332341 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d279bd2b8ee0f7ea09cf161227920f7e4fb63a66427419c2c99599ee2c1fe1f`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793059200'
# Thu, 29 Oct 2026 20:34:20 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 29 Oct 2026 20:34:20 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 29 Oct 2026 20:34:20 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Oct 2026 20:34:20 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 29 Oct 2026 20:34:20 GMT
WORKDIR /tmp
# Thu, 29 Oct 2026 20:41:34 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 29 Oct 2026 20:41:34 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 29 Oct 2026 20:41:35 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 29 Oct 2026 20:41:35 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 29 Oct 2026 20:41:35 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:afc58b8a231a1e6a214ec81e1a281467fb0d1d7d88266448b5a56d1ec376a47f`  
		Last Modified: Wed, 28 Oct 2026 00:24:13 GMT  
		Size: 53.2 MB (53222242 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec987719a309d018379ffe9ed711b890b4cf54c38b046b86d69b8e3ff1cf3b7f`  
		Last Modified: Thu, 29 Oct 2026 20:39:00 GMT  
		Size: 90.1 MB (90111714 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4ea040d46d37ad1164391c336a89f1ecebd4467e4701c6b87e545c6da9fcc1b`  
		Last Modified: Thu, 29 Oct 2026 20:42:20 GMT  
		Size: 88.0 MB (87997341 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e12d346be823e84490662711d7823c05927b8cd1ba2d0b45ba994ec9c40a0fb`  
		Last Modified: Thu, 29 Oct 2026 20:42:17 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e2dbeaa948b2d40f8c7fe0f7aa7fce0e8d56e7df1fb1aa367be854ad1620abd`  
		Last Modified: Thu, 29 Oct 2026 20:42:17 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:tools-deps-1.12.6.1673-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:74e016e2c31cdb95e8d35c55bc3c41854b9017cef4d78da9bf6f1b819334848e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7447332 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95f4fecbbce9d63abb1036ef1b67d9b3a93f956e29c041709ed9ee4a201aeaf0`

```dockerfile
```

-	Layers:
	-	`sha256:512cf97b7c669587cf581b0cda819c4b6e7cf842597ec06675facc9ae4da3f2b`  
		Last Modified: Thu, 29 Oct 2026 20:42:18 GMT  
		Size: 7.4 MB (7430703 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b3f01c38640e33c79677598a0ff4dd19575bc9bd3bfb7d860a9d12556961af9e`  
		Last Modified: Thu, 29 Oct 2026 20:42:17 GMT  
		Size: 16.6 KB (16629 bytes)  
		MIME: application/vnd.in-toto+json
