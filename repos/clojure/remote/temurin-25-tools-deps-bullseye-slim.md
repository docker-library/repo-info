## `clojure:temurin-25-tools-deps-bullseye-slim`

```console
$ docker pull clojure@sha256:772143cb577eec989015971f4479219f4ea5edd74e299c790057f8eb3717f66c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-25-tools-deps-bullseye-slim` - linux; amd64

```console
$ docker pull clojure@sha256:954b64dfefc60169174266bc51480c77ebb506fa268bee790acb3215f7a021ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **179.0 MB (178990585 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8433345c6ad1a74c6558e7ce9a4a29797d3d342b77076434d1bb09163ea07c91`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1787529600'
# Tue, 25 Aug 2026 01:31:33 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 01:31:33 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 01:31:33 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 01:31:33 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 25 Aug 2026 01:31:33 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 01:31:46 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 25 Aug 2026 01:31:46 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 25 Aug 2026 01:31:46 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 25 Aug 2026 01:31:46 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 25 Aug 2026 01:31:46 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:4705738e5e0492efae5d2523aa791e06c852e2e1acb5e70a365cc08f9da0c556`  
		Last Modified: Mon, 24 Aug 2026 23:20:36 GMT  
		Size: 30.3 MB (30259727 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ccfe47735cd9aeeef4239bfc4bc7589fe8893ee7a480adb1385f67d9b9422f4`  
		Last Modified: Tue, 25 Aug 2026 01:32:06 GMT  
		Size: 92.6 MB (92615119 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ea72a0a28a38a2e2e999a4f11308951a34d1a5b719f7f01817bdc06d0eebb24`  
		Last Modified: Tue, 25 Aug 2026 01:32:05 GMT  
		Size: 56.1 MB (56114696 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0b5a86f4771e10b97115d9e353f31a413126294d7c33ac8be6e2c5cf060d2dc`  
		Last Modified: Tue, 25 Aug 2026 01:32:03 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08afaa04d95f8826d5dd26045e40584bb0672bd5ca83d7c1aa22fbaa75b290da`  
		Last Modified: Tue, 25 Aug 2026 01:32:03 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:6d248ee611a5ba5ff329cb3c270966c416f53a2de22b34019c04a3d3e2e24170
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5307821 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14242468f7f1210076b2a1c0c9e09f513c57020c1a171bb8bd5b9bbd17708bc4`

```dockerfile
```

-	Layers:
	-	`sha256:5a8e21895622a0341a8a18bf2608db42abda8b8260445c2304fe07ec9a1caf8f`  
		Last Modified: Tue, 25 Aug 2026 01:32:03 GMT  
		Size: 5.3 MB (5291142 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8b5a3f7cc25976c6942887a2b332bf9cec47f7ad1c525ccdb3395465730ffe5c`  
		Last Modified: Tue, 25 Aug 2026 01:32:02 GMT  
		Size: 16.7 KB (16679 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-tools-deps-bullseye-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:2e0b86ce4e6bae0d984c660768c744cf3617f449d4e167741f40706d4ef87b38
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.6 MB (176563469 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3bd5b5faa512f2d5f3626af560068ba8bb9d3152dcf01737041746642337ce6`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1785715200'
# Fri, 21 Aug 2026 19:09:20 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 19:09:20 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 19:09:20 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:09:20 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Fri, 21 Aug 2026 19:09:20 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:09:34 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 21 Aug 2026 19:09:34 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 21 Aug 2026 19:09:34 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 21 Aug 2026 19:09:34 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 21 Aug 2026 19:09:34 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:93e0ff6a69cbbe5e567bea0ae7560cdd816fd4205541e7cb6b0fd3998b169541`  
		Last Modified: Tue, 04 Aug 2026 23:51:59 GMT  
		Size: 28.7 MB (28748907 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4c2165e37a106b9a22b71dbf0bdda4b9f0c0a63096036ebd9ea5ff27946e546`  
		Last Modified: Fri, 21 Aug 2026 19:09:57 GMT  
		Size: 91.5 MB (91532202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c5317c62aa52061da6f42126da8885ee87c42467d8343ef689f6879f3644720`  
		Last Modified: Fri, 21 Aug 2026 19:09:56 GMT  
		Size: 56.3 MB (56281319 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:493d496c77bece662ba3715a24ca570b31fe0d0fe7cbea986afb200f56e257c0`  
		Last Modified: Fri, 21 Aug 2026 19:09:54 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5231af603589dc640b5de8a60b3da77438f26dacf23baed8bb1835b2409e6b62`  
		Last Modified: Fri, 21 Aug 2026 19:09:54 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:6a13666e56f4b4dba4d02fddb4fdbe61e93b15418ede9cd4776425b86e5479c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5313715 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c498557d16723ad8fd35a359e29d6b7eae617e8ecf1116f4623ef4c4fe9391d8`

```dockerfile
```

-	Layers:
	-	`sha256:dfaac68492e7292f4cab3f2a29bed8659cafb8558a217f3f7d2815b260c97453`  
		Last Modified: Fri, 21 Aug 2026 19:09:54 GMT  
		Size: 5.3 MB (5296895 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2cb20429131bb85ed1811ea70662dcf478b31315a8940147c0706ab5405ee99e`  
		Last Modified: Fri, 21 Aug 2026 19:09:53 GMT  
		Size: 16.8 KB (16820 bytes)  
		MIME: application/vnd.in-toto+json
