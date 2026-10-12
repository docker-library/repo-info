## `clojure:temurin-27-trixie-slim`

```console
$ docker pull clojure@sha256:da9042dd599bbfff8431e74ffd7f5a01d3a9a32957c8879b6abc7c8cdca20338
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-27-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:f4c65e0b078abea1e245f9c8f0b81abd987c85037b55bb488a5250e71f61c54b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **192.5 MB (192458385 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12beb43f89db28f341afdc34e903d64d179413109b77ea693af3019abc54178c`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Mon, 12 Oct 2026 18:29:30 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 12 Oct 2026 18:29:30 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Mon, 12 Oct 2026 18:29:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 12 Oct 2026 18:29:30 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Mon, 12 Oct 2026 18:29:30 GMT
WORKDIR /tmp
# Mon, 12 Oct 2026 18:29:47 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Mon, 12 Oct 2026 18:29:48 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Mon, 12 Oct 2026 18:29:48 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Mon, 12 Oct 2026 18:29:48 GMT
ENTRYPOINT ["entrypoint"]
# Mon, 12 Oct 2026 18:29:48 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c401498b40f5ffe091a9bd11b1e4e9d74e723614ee71c908f365610a8194876d`  
		Last Modified: Mon, 12 Oct 2026 18:30:10 GMT  
		Size: 93.6 MB (93622506 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb43cd51b4d1deb46dfc4b9db17fd9a53ebc0154c4289f08de537ddec305fb25`  
		Last Modified: Mon, 12 Oct 2026 18:30:09 GMT  
		Size: 69.0 MB (68991486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f7503e98fabc906868418c2de0f4c20227e2eb84a539ecde06fc5aa680b100e`  
		Last Modified: Mon, 12 Oct 2026 18:30:06 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6053145260e9d8432c15e84bfae63e5b40a4acf4acd748a2623d0c856fe7a6ab`  
		Last Modified: Mon, 12 Oct 2026 18:30:06 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:314369af3cafcab2e6f1e24a2dc8be58db1b920ad2aed7991f3cac6f624e9f5e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5242897 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67f3de639afcebb9abb4fa68bc5061512da8158316676077156e2ce65ba7cea7`

```dockerfile
```

-	Layers:
	-	`sha256:535ee990cc0626e6682736f20129cb74076394f88beabc33126d0bdd0e47ebff`  
		Last Modified: Mon, 12 Oct 2026 18:30:06 GMT  
		Size: 5.2 MB (5226938 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:34ce289af3179bdbd7ee13dbd9122de821c430cb48f051f4d29c19d30b4738c5`  
		Last Modified: Mon, 12 Oct 2026 18:30:06 GMT  
		Size: 16.0 KB (15959 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:e4c5bc124e8e5340e06f68b591f33300aab483a479b336c345c317646e09fbb6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.6 MB (191642819 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22c25f703b35cbb6fa6d92ff1231e06c897c76d34c568fb5e64421b6fcb92d8c`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Mon, 12 Oct 2026 18:30:47 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 12 Oct 2026 18:30:47 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Mon, 12 Oct 2026 18:30:47 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 12 Oct 2026 18:30:47 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Mon, 12 Oct 2026 18:30:47 GMT
WORKDIR /tmp
# Mon, 12 Oct 2026 18:31:04 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Mon, 12 Oct 2026 18:31:05 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Mon, 12 Oct 2026 18:31:05 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Mon, 12 Oct 2026 18:31:05 GMT
ENTRYPOINT ["entrypoint"]
# Mon, 12 Oct 2026 18:31:05 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0975953e0657460857d566f008a42c1a0779c406a75eae92d52803f3a564e688`  
		Last Modified: Mon, 12 Oct 2026 18:31:26 GMT  
		Size: 92.6 MB (92633112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d75d46ba30f2efefac797c898698bc7f89244a2a89851bb59516a6a1358057a`  
		Last Modified: Mon, 12 Oct 2026 18:31:26 GMT  
		Size: 68.8 MB (68808385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:adee70e900544e4872a2a9ebe936f6f37a85e1e3d47633bbc7a58852bfc40a49`  
		Last Modified: Mon, 12 Oct 2026 18:31:22 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:071b7011dd1fc3adb18e3d16e19fe687a753c4b02b2d19cb250ebbd806410441`  
		Last Modified: Mon, 12 Oct 2026 18:31:23 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:280c9b27ab960c0018b38daab8cedef5cf04db756a077d66da65264bac4625ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5248773 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6f1f59c49cb02424e8ff8bc2c41ab2bf6a6b577818f64bd4646d38b6d5fc40e`

```dockerfile
```

-	Layers:
	-	`sha256:79ac58e576b83d13ac8858d0c27e2fddb3041ab381ad82753c35c1d9d44dad80`  
		Last Modified: Mon, 12 Oct 2026 18:31:23 GMT  
		Size: 5.2 MB (5232696 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fdc395e453025c768ed1e5530616d0fba0386397309a007ed07bd2693bb6277c`  
		Last Modified: Mon, 12 Oct 2026 18:31:22 GMT  
		Size: 16.1 KB (16077 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:107d6590b67bfe4e9259a1a38e6d308b74d096c73957630df40bd12c4c039eaf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.3 MB (200320305 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec7c378f71d5463b2a2621ca60c8dd7b9d68cde8dc42b6ec4b8fd6080610a2b8`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1791158400'
# Mon, 12 Oct 2026 18:26:49 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 12 Oct 2026 18:26:49 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Mon, 12 Oct 2026 18:26:49 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 12 Oct 2026 18:26:49 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Mon, 12 Oct 2026 18:26:50 GMT
WORKDIR /tmp
# Mon, 12 Oct 2026 18:34:53 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Mon, 12 Oct 2026 18:34:56 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Mon, 12 Oct 2026 18:34:59 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Mon, 12 Oct 2026 18:34:59 GMT
ENTRYPOINT ["entrypoint"]
# Mon, 12 Oct 2026 18:34:59 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:5ca0f09a490b90798516816fc3a5f086b1467ed56f5252150458c41384c9aa5f`  
		Last Modified: Tue, 06 Oct 2026 00:16:24 GMT  
		Size: 33.7 MB (33651599 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdce8a835ada47fbe2d55146ce5d81230200596d54ec78f2c40d279d127e7d3b`  
		Last Modified: Mon, 12 Oct 2026 18:30:33 GMT  
		Size: 92.3 MB (92255828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dda39902efa837f1fcfd29918cc8fc9fdbf275cdfc9366c8e2527bc9fa8f0dd1`  
		Last Modified: Mon, 12 Oct 2026 18:35:51 GMT  
		Size: 74.4 MB (74411834 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09a69a88df1a88f3374f3b6d3c45257ace3168a63c94842da9abcf2db4c5240f`  
		Last Modified: Mon, 12 Oct 2026 18:35:49 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1068d824f5c1d54f59fabc9e82a85119c0c39e620e1d1c00480f4d115da6bcb`  
		Last Modified: Mon, 12 Oct 2026 18:35:49 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:dcff4356b15cfbf86a409ba6b1b4109ba72dd922a3bb6bb9a5619dc1f1e4f1af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5231252 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7f2a7ec4b3091fa5372e34da76519373db4bc144af2d22d827803da135e10f2`

```dockerfile
```

-	Layers:
	-	`sha256:4c9faa261019b99724a0fe3a0fe5c254e1c9fda17eef32b52e64b993c61ef92d`  
		Last Modified: Mon, 12 Oct 2026 18:35:49 GMT  
		Size: 5.2 MB (5215245 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aa6b57860e948069cfcca377305111b2e362488bdc0549f52a9fb51b8492b22b`  
		Last Modified: Mon, 12 Oct 2026 18:35:49 GMT  
		Size: 16.0 KB (16007 bytes)  
		MIME: application/vnd.in-toto+json
