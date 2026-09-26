## `clojure:tools-deps-1.12.6.1673-bookworm-slim`

```console
$ docker pull clojure@sha256:cd15c4ba17997fb6009905a3c77e9e89cf6ae25c6369e3c7463c3863fdcffdfd
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:tools-deps-1.12.6.1673-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:202c1987bff170807402a68e6aa4c1246e16c6aa5e04c7639dcaf094f9f6b947
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.5 MB (187545473 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36d23649433f226c6b4365948d9d2dc85df214c948e420ca4b226c4f05a02e35`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Fri, 25 Sep 2026 23:24:51 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 23:24:51 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 25 Sep 2026 23:24:51 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 23:24:51 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 25 Sep 2026 23:24:51 GMT
WORKDIR /tmp
# Fri, 25 Sep 2026 23:25:06 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 25 Sep 2026 23:25:06 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 25 Sep 2026 23:25:06 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 25 Sep 2026 23:25:06 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 25 Sep 2026 23:25:06 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:774043ccc8ccd0d0833a9ee0792142ab7ad93df971e59dd248fbf82db16d0150`  
		Last Modified: Sat, 19 Sep 2026 00:03:16 GMT  
		Size: 28.2 MB (28238443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:648569ffb8325f88a3ac64f829aa3b20da7163f2b11bc7848deec88cc1b81d9b`  
		Last Modified: Fri, 25 Sep 2026 23:25:28 GMT  
		Size: 92.6 MB (92618033 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93176eb0db11fc51ff07c329329cd5a79b0e9e964ef07c9f94fedd3acc1a4373`  
		Last Modified: Fri, 25 Sep 2026 23:25:27 GMT  
		Size: 66.7 MB (66687954 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c60e91455e219b61b5bfad1ac530e131e1183669403c32b89a9e118bbadc0195`  
		Last Modified: Fri, 25 Sep 2026 23:25:24 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f95866b2b35e9f13770626e39ab2512a4b8e2626f4a9a79422f01312d92e6dfb`  
		Last Modified: Fri, 25 Sep 2026 23:25:24 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:tools-deps-1.12.6.1673-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:64f6af06be5e513b95ade99b3148384cba9ea204c806f9079f904a82fffb913e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5104079 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4d90c8e5c971f53b571d39d4a363ff3e671e887355882a84822c88cd1a55bf1`

```dockerfile
```

-	Layers:
	-	`sha256:a49e38d8045bdc022a8ead3909c8496a88a56679ef12c10660e92b74d9022649`  
		Last Modified: Fri, 25 Sep 2026 23:25:25 GMT  
		Size: 5.1 MB (5087400 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3fb99055d6d6d2fc5eeb2540ab5c66f6b1eee3a6063f594696cc330204229007`  
		Last Modified: Fri, 25 Sep 2026 23:25:24 GMT  
		Size: 16.7 KB (16679 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:tools-deps-1.12.6.1673-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:e624446c31430848509fdcbce04ab77e4540260c222efe6609a777ead0fade5d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **186.3 MB (186335297 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4bc7686625811656c83dfc8ce25b15dc4fe23780549dab32cd705bbd1a29646b`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1789689600'
# Fri, 25 Sep 2026 23:22:38 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 23:22:38 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 25 Sep 2026 23:22:38 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 23:22:38 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 25 Sep 2026 23:22:38 GMT
WORKDIR /tmp
# Fri, 25 Sep 2026 23:22:53 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 25 Sep 2026 23:22:53 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 25 Sep 2026 23:22:53 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 25 Sep 2026 23:22:53 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 25 Sep 2026 23:22:53 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:333125b5cee9fb6718bdcb523fc93b4adc71b7c37ada6146a20c193430e549b9`  
		Last Modified: Sat, 19 Sep 2026 00:03:02 GMT  
		Size: 28.1 MB (28123680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ff08660a79b2d769d0cb9e99a4cbcb082a9b98dc67f40aa2009e040718bf818`  
		Last Modified: Fri, 25 Sep 2026 23:23:15 GMT  
		Size: 91.5 MB (91528868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6cf63eaea1aae178f3eb64cd8c447622111e8db4653623997b6679b3fffae6d`  
		Last Modified: Fri, 25 Sep 2026 23:23:14 GMT  
		Size: 66.7 MB (66681710 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2383f54c5dbe076f2d8f3ca24ae9696c36c53326dc1e20c85da3e6f7b5629598`  
		Last Modified: Fri, 25 Sep 2026 23:23:12 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ec9ed4571f9acb5469fcc3d52692194206c45bc8fc132587f41f5a7dbeb8e10`  
		Last Modified: Fri, 25 Sep 2026 23:23:12 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:tools-deps-1.12.6.1673-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:787c55d2d061ce37ba234da068b92c26abaec7b6e635c557ad0f6c89d2e80492
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5110003 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88d1fc31f19b00f1420d847334a8532cfa77c0f7fe7cced841e6a28bf0a7c8aa`

```dockerfile
```

-	Layers:
	-	`sha256:0f15e306a95bcd8aefde6d6d36c0997730e96f6b48b8616bef6af56b1dd6dccc`  
		Last Modified: Fri, 25 Sep 2026 23:23:12 GMT  
		Size: 5.1 MB (5093182 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:129261bc1bd752442e451d788e2dc4c932319699f02222fe0a58c04be552d148`  
		Last Modified: Fri, 25 Sep 2026 23:23:12 GMT  
		Size: 16.8 KB (16821 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:tools-deps-1.12.6.1673-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:f13dcbfea42cea4b647a95f88249179e841fc4d1ea7658ddaf511ae4442355c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **195.8 MB (195839233 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4ed42c05089a8059a2ada420047ff3ffee412dcfcab1e3c4a737ea46802e5db`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 08:15:10 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 08:15:10 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 08:15:10 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 08:15:10 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 19 Sep 2026 08:15:10 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 08:21:45 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 19 Sep 2026 08:21:45 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 19 Sep 2026 08:21:46 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 19 Sep 2026 08:21:46 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 19 Sep 2026 08:21:46 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:b165d89f1b791c34b9c20f2a31fc4c5d2df2528fb278dbc56b0e78f166c6b6b4`  
		Last Modified: Sat, 19 Sep 2026 00:02:48 GMT  
		Size: 32.1 MB (32083564 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c8b45bcb39b6c6ccac622b12389186f44a6f6e5836499fd9e571b1f68545fba`  
		Last Modified: Sat, 19 Sep 2026 08:18:58 GMT  
		Size: 91.3 MB (91255822 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a66c3b83cd320a0ea178c1623b769b0abd61a30716a14ac6ca79c04da76ed6cd`  
		Last Modified: Sat, 19 Sep 2026 08:22:33 GMT  
		Size: 72.5 MB (72498804 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97ccac95fd60ac01818199c42530721cb8518c37053b3b054077d344f5001af6`  
		Last Modified: Sat, 19 Sep 2026 08:22:31 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71bcd58ea042f451b2d211afe7a42be2b7a47679c565d49c358fcd54ae0513da`  
		Last Modified: Sat, 19 Sep 2026 08:22:31 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:tools-deps-1.12.6.1673-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:11a2673e7696d7d277996c1b1a73b0c751bc6f0c00d2a3fece53a2ebabd6221c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5092612 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8de48a6d3cd609a35cd3c38408dd699e7ebd36011e9d9829e73ff615401926cc`

```dockerfile
```

-	Layers:
	-	`sha256:5a70189206800b541166dc9357aabb47513321ea104abc6e05038be5d6336173`  
		Last Modified: Sat, 19 Sep 2026 08:22:31 GMT  
		Size: 5.1 MB (5075874 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:abc08f1b4a4454fd093198054850fc233ab29d3bf78afe0eff8b8e910ea04e42`  
		Last Modified: Sat, 19 Sep 2026 08:22:31 GMT  
		Size: 16.7 KB (16738 bytes)  
		MIME: application/vnd.in-toto+json
