## `clojure:temurin-26-trixie`

```console
$ docker pull clojure@sha256:ba17a9ffb5b61cb65620516a51d684c499f9a794fe4c05cdf46e1924d018894f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-26-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:5c9cdf07c4a699be4256a82cdca220a80629b0f2eed2731b88ed98423bb5bd2b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.5 MB (229496367 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23d18e4f971e9612d5a0e3ce10147af94e92bd92e71024eb6d57138ad7e86a21`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Fri, 02 Oct 2026 02:50:28 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 02:50:28 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 02 Oct 2026 02:50:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 02:50:28 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 02 Oct 2026 02:50:28 GMT
WORKDIR /tmp
# Fri, 02 Oct 2026 02:50:45 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 02 Oct 2026 02:50:45 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 02 Oct 2026 02:50:45 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 02 Oct 2026 02:50:45 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 02 Oct 2026 02:50:45 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:6eefb2f5d3e91a6cfc577476bbec26bb63f0d0fc31f904493f400833783aa2c2`  
		Last Modified: Sat, 19 Sep 2026 00:05:52 GMT  
		Size: 49.4 MB (49379699 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43efd9eb7a87719dd82b9042e801cb8ea3fda1d660a762968a77230f7d3bdad2`  
		Last Modified: Fri, 02 Oct 2026 02:51:08 GMT  
		Size: 94.6 MB (94563480 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82a0531ba69231ceb5cdba1870f75f2602124b6e351ae65248906612c2964058`  
		Last Modified: Fri, 02 Oct 2026 02:51:08 GMT  
		Size: 85.6 MB (85552143 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1a39816a434659b48aeaa8c46ab44df59a452bc13362e9de8e51fe3a71ea277`  
		Last Modified: Fri, 02 Oct 2026 02:51:05 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7c1811892e1cd94fb8d3273c139d9af0ea0608aac35abec9094e58cb2b701c8`  
		Last Modified: Fri, 02 Oct 2026 02:51:05 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:adf82a2e4384f8ae4b9870681929f6e73ce1b8864a64084142099ee5ab6efb10
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7459614 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16c5cc234a0504ed99432447d9fde8d2da10ea15a0881bef5e1d255384beaf28`

```dockerfile
```

-	Layers:
	-	`sha256:3ed46b625b1a7d088017b481bb84578c966ec2a1f490c7f805db9c4911eb0c06`  
		Last Modified: Fri, 02 Oct 2026 02:51:05 GMT  
		Size: 7.4 MB (7443713 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:98989a0ccecc381fde7374d7e0ec431f8c1f386dd68e9b17119c732fe173e012`  
		Last Modified: Fri, 02 Oct 2026 02:51:04 GMT  
		Size: 15.9 KB (15901 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:78ed35a780fbcf2fd514e53d877b8934e439b2020a2819aaaafc780776c31c91
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.0 MB (229027320 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ecc44589a6028286c85aa2969435aa0079b21c9dbeb5ea7668779a8a5e322594`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Fri, 02 Oct 2026 02:50:06 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 02:50:06 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 02 Oct 2026 02:50:06 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 02:50:06 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 02 Oct 2026 02:50:06 GMT
WORKDIR /tmp
# Fri, 02 Oct 2026 02:50:24 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 02 Oct 2026 02:50:24 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 02 Oct 2026 02:50:24 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 02 Oct 2026 02:50:24 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 02 Oct 2026 02:50:24 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:ccd9dba13ae33c050c13176f84743269a9457dcb0cfd091e368aa5131dd9e9c7`  
		Last Modified: Sat, 19 Sep 2026 00:05:44 GMT  
		Size: 49.7 MB (49748836 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:daeae56f01938ef23427b3ebba8e9ecc48696a384630f23dbed85883d4a64578`  
		Last Modified: Fri, 02 Oct 2026 02:50:47 GMT  
		Size: 93.5 MB (93543600 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6db1beecfe2b2b73cd4a2b23955af4dcb386536ab86f459bcfee332aa27fabe4`  
		Last Modified: Fri, 02 Oct 2026 02:50:47 GMT  
		Size: 85.7 MB (85733843 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f65ccc500285558b34df9c2f3663badbbc976f3a64482310de5df10597c76025`  
		Last Modified: Fri, 02 Oct 2026 02:50:43 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06ba86005a2c7feb9ec76b496ae75df835220dada16cb0b70cfafefe0938b06d`  
		Last Modified: Fri, 02 Oct 2026 02:50:43 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:3b13be3b1cf0c5cd8e1a70445fd11acfec242366d3d90d532801e3db6db73660
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7466122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:783585de8c09750f69d3c5a32e310ef78ac008b71c4fe0d5e1bedde7ba97ccd1`

```dockerfile
```

-	Layers:
	-	`sha256:3bcc91e32935e58a81c9e4095ea016e71ba7abf7567b560c13db687e7596f899`  
		Last Modified: Fri, 02 Oct 2026 02:50:44 GMT  
		Size: 7.5 MB (7450103 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1e4baa27699d64e7561f292605f0427d1868c19e4e32aebb88589530e4dd3461`  
		Last Modified: Fri, 02 Oct 2026 02:50:43 GMT  
		Size: 16.0 KB (16019 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:d22b46acf98bf4acba55c41af93ac6d5f440319a8e31a11a03ab40b4719d23f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **234.5 MB (234537591 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20f392e67c85a5f9ad520c613e72538ec4a56748005d25115f8c1de32ba3f6a5`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1789689600'
# Sat, 26 Sep 2026 05:48:50 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 26 Sep 2026 05:48:50 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 26 Sep 2026 05:48:50 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 26 Sep 2026 05:48:50 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 26 Sep 2026 05:48:51 GMT
WORKDIR /tmp
# Sat, 26 Sep 2026 05:56:53 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 26 Sep 2026 05:56:53 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 26 Sep 2026 05:56:54 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 26 Sep 2026 05:56:54 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 26 Sep 2026 05:56:54 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:fe57b34d87b4c3538e7b00694a21e5bd450391029c5c22b4da16fbe872c78d51`  
		Last Modified: Sat, 19 Sep 2026 00:05:59 GMT  
		Size: 53.2 MB (53195075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d97818a0dc9b01dc3b4304e7d1140df380e6f733d7e82c2323a42ed56ff550f7`  
		Last Modified: Sat, 26 Sep 2026 05:52:07 GMT  
		Size: 93.4 MB (93350858 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a7c86642e6e98b8bf1e6ad12428d67586d6964c6d9927d05e6e7436efb5be1d`  
		Last Modified: Sat, 26 Sep 2026 05:57:34 GMT  
		Size: 88.0 MB (87990614 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c7c460e3dfee95ed047e280871f8caa2d22aad5aa021fee66c10f811c4ecd82`  
		Last Modified: Sat, 26 Sep 2026 05:57:32 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbd40591fe6173fb8f4ad8aac07aeb51464c9ae5c1f4eceb798bec8880565604`  
		Last Modified: Sat, 26 Sep 2026 05:57:32 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:a4738537e0b799bfdf85845ee208a97970fab78c24384385c29381d87a7f8835
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7448017 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86dae3ebe4cecdf7a6c90f703230386c433b1770f37a25c05ee2130dc8ab63d8`

```dockerfile
```

-	Layers:
	-	`sha256:9d00e086c93a14f026aa8e6e5b3defa4e151b34c5bb616b8e2e8a10d8f340c22`  
		Last Modified: Fri, 02 Oct 2026 08:33:30 GMT  
		Size: 7.4 MB (7432068 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:495a39a5a617ad651e429d7e8494ed4f7d4a9ff0f6efad97084802901c164382`  
		Last Modified: Fri, 02 Oct 2026 08:33:30 GMT  
		Size: 15.9 KB (15949 bytes)  
		MIME: application/vnd.in-toto+json
