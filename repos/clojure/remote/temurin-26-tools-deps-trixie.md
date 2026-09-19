## `clojure:temurin-26-tools-deps-trixie`

```console
$ docker pull clojure@sha256:cdb48987feccf867d2bbc45a73ab697e32eb9e3c79779d68963e99b91d792d0d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-26-tools-deps-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:fc799d0c9a9d81f3e80842a02b7b883890555e65496aaca89064fdde454ee725
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **226.5 MB (226511172 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5474e4e60c2d4bd51b8468cb13c419750e837413f993a74ce1d60b4503eef1f`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 01:18:17 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 01:18:17 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 01:18:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:18:17 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 19 Sep 2026 01:18:17 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 01:18:32 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 19 Sep 2026 01:18:32 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 19 Sep 2026 01:18:32 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 19 Sep 2026 01:18:32 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 19 Sep 2026 01:18:32 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:6eefb2f5d3e91a6cfc577476bbec26bb63f0d0fc31f904493f400833783aa2c2`  
		Last Modified: Sat, 19 Sep 2026 00:05:52 GMT  
		Size: 49.4 MB (49379699 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7d8d7bf06f6bd65464d2f756880d6af6c28d67763d06b0c02834df65f64c90b`  
		Last Modified: Sat, 19 Sep 2026 01:18:54 GMT  
		Size: 94.6 MB (94563755 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5e86aab2e08ae085b0c43b7907c6f01faf0cbc415bb054559cdc9f043e7d59c`  
		Last Modified: Sat, 19 Sep 2026 01:18:53 GMT  
		Size: 82.6 MB (82566681 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0570593b8951afca3fa703f2420a69cceb13a37a3380148c64f242b41c1b42f6`  
		Last Modified: Sat, 19 Sep 2026 01:18:50 GMT  
		Size: 610.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e28027dcfb452bafdb735304fdb1bcab195e0f3371c38b92f72f001a5eda8ba`  
		Last Modified: Sat, 19 Sep 2026 01:18:50 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:eb49e6b9db1e31293d64c7c953b0f7bce94f3abb5477e2a9c0399af81a6dc48c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7459608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c91b2c6a31af3520bce7fba8ed8cf169e48678a5639146ac3f2df5fed0ed95bf`

```dockerfile
```

-	Layers:
	-	`sha256:46c32afec0f96860f67e9ede92d6bad3fde1142910b7eaee05c1b9e8e196823e`  
		Last Modified: Sat, 19 Sep 2026 01:18:50 GMT  
		Size: 7.4 MB (7443707 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5c9702088505366f35aa0f0c3a37f0981f7087ab114d21c17b7a645c493e7633`  
		Last Modified: Sat, 19 Sep 2026 01:18:50 GMT  
		Size: 15.9 KB (15901 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-tools-deps-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:153f5577d36af374ab16a54ff36a4fe95186946cd2156ff34d690d8d3ef5a7ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **225.7 MB (225681195 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c9e494494c2ef41b74c534fd5fb91c8ee361a7c73d2c042c6c7fdf67fce8023`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 01:25:45 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 01:25:45 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 01:25:45 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:25:45 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 19 Sep 2026 01:25:45 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 01:26:02 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 19 Sep 2026 01:26:02 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 19 Sep 2026 01:26:02 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 19 Sep 2026 01:26:02 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 19 Sep 2026 01:26:02 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:ccd9dba13ae33c050c13176f84743269a9457dcb0cfd091e368aa5131dd9e9c7`  
		Last Modified: Sat, 19 Sep 2026 00:05:44 GMT  
		Size: 49.7 MB (49748836 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe73a2fd1e6fda59cd74d6766f99fc9fa26e77e1ae0fa2b50eea5acf89abb2cb`  
		Last Modified: Sat, 19 Sep 2026 01:26:25 GMT  
		Size: 93.5 MB (93541602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cd57b2b8279fba126fb653fb9c3e7c2f712304407fc2b7b47f3f484fc237063`  
		Last Modified: Sat, 19 Sep 2026 01:26:25 GMT  
		Size: 82.4 MB (82389716 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f73e145bac83a60592d9cb6450a0a65c8d1f53da6468d735af92242bbdebddcc`  
		Last Modified: Sat, 19 Sep 2026 01:26:22 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fabf9edbe6558a8051a922889a51ad4ace5062793318b8188993f445f32fb067`  
		Last Modified: Sat, 19 Sep 2026 01:26:22 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:10433e8493b2649c2fb1caac8cf96b2d2dc96512b8ed4852b6ccc4e0408624ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7466116 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2f2334a944fe3530faa50ddc070035a4d4a0e3607c169462404265d5670fbe4`

```dockerfile
```

-	Layers:
	-	`sha256:cdb566620a7f1fc2542bbbc79d67ee1c8172c2df4063ac9b0872cf4281842c97`  
		Last Modified: Sat, 19 Sep 2026 01:26:22 GMT  
		Size: 7.5 MB (7450097 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:863b102e83fe57c6160ab2d70c10a6def84d9f5313282d3d637abccf9a04ea35`  
		Last Modified: Sat, 19 Sep 2026 01:26:22 GMT  
		Size: 16.0 KB (16019 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-tools-deps-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:879d17f19eb21dd8040bb0832d52eb537110e10d7d78aa2a57f85aea756ec147
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **234.5 MB (234537601 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33375841b2549f15e018345197e432b843021afc33bdf97d454d511b928f695c`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 08:29:35 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 08:29:35 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 08:29:35 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 08:29:35 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 19 Sep 2026 08:29:36 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 08:36:16 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 19 Sep 2026 08:36:17 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 19 Sep 2026 08:36:17 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 19 Sep 2026 08:36:17 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 19 Sep 2026 08:36:17 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:fe57b34d87b4c3538e7b00694a21e5bd450391029c5c22b4da16fbe872c78d51`  
		Last Modified: Sat, 19 Sep 2026 00:05:59 GMT  
		Size: 53.2 MB (53195075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c978fdd14e79985f41c4b5ec2407d905572e538e942fa16c833f96b1db019f92`  
		Last Modified: Sat, 19 Sep 2026 08:33:36 GMT  
		Size: 93.4 MB (93350806 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b11cb2eef5235edfb0fecd12b3b925e1876ce8925ffcfeda3ea018ba5821f60`  
		Last Modified: Sat, 19 Sep 2026 08:36:52 GMT  
		Size: 88.0 MB (87990678 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02ced16babdde0a564ed855c04dae0c48022d1efcf0c1975885cecd37e147e0b`  
		Last Modified: Sat, 19 Sep 2026 08:36:50 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdd0ba1c32bfdebbd60c1a79cf369371e610c56701c1bd03b6b71fc399e6fd0d`  
		Last Modified: Sat, 19 Sep 2026 08:36:50 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:d95901161787e34e27ad35bff51c65a6356dac886838ef1d2f16258ec20a5042
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7448011 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa13d015f6698fb3c742e123df847b51c57e54bbfe9278bf341725788733c8c1`

```dockerfile
```

-	Layers:
	-	`sha256:28034a53d1fb4cb820d16487e7f7c6e1afec67a7eb0c88baf6c62b914e0b8906`  
		Last Modified: Sat, 19 Sep 2026 08:36:50 GMT  
		Size: 7.4 MB (7432062 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4471d077a439af76d8c2826cfba116483f2bdd6566d59f257411df273eb29224`  
		Last Modified: Sat, 19 Sep 2026 08:36:50 GMT  
		Size: 15.9 KB (15949 bytes)  
		MIME: application/vnd.in-toto+json
