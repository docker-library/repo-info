## `clojure:latest`

```console
$ docker pull clojure@sha256:47d5888e7a81962867f32351cc006e529b58bafccb599a62ded7b74e48cfb77f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:latest` - linux; amd64

```console
$ docker pull clojure@sha256:d0de0f6b94b1986725ec654ffdc8132ee392bbc443c0b6d2ede45f844b65a66b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.9 MB (237879411 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77266d7799a634edb240c03186bcbe506f0e2063b7a0a7a2176c4f34018cb067`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 02:08:50 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:08:50 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:08:50 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:08:50 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 28 Oct 2026 02:08:50 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 28 Oct 2026 02:08:50 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 02:10:04 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 28 Oct 2026 02:10:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 28 Oct 2026 02:10:04 GMT
ENV LEIN_ROOT=1
# Wed, 28 Oct 2026 02:10:06 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 28 Oct 2026 02:10:06 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 28 Oct 2026 02:10:06 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 02:10:20 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 28 Oct 2026 02:10:20 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 28 Oct 2026 02:10:20 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 28 Oct 2026 02:10:20 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 28 Oct 2026 02:10:20 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:a4aa977c0d0eb2336dad68941e458308ebf32a717c19ea72e475b9eda8035506`  
		Last Modified: Wed, 28 Oct 2026 00:10:13 GMT  
		Size: 48.5 MB (48524552 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33be771a080fee9b5b2aa764caed55ef32ea2e32aa9946dc881300a8eb9f2e08`  
		Last Modified: Wed, 28 Oct 2026 02:10:43 GMT  
		Size: 92.6 MB (92618078 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f131b8079981c1fbc69eb7327670c8957f528d94f0900c6e48ddebc0961c9ba`  
		Last Modified: Wed, 28 Oct 2026 02:10:40 GMT  
		Size: 20.1 MB (20132739 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0517cf6d7ebfa3830de12fb9d6859005c8aeab46c4c26a8ebb124271cae3537a`  
		Last Modified: Wed, 28 Oct 2026 02:10:40 GMT  
		Size: 4.5 MB (4515212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b16c4a34154f5604e3e79aca2d6dd2e6cc496ddce160755197c79d0eba64023`  
		Last Modified: Wed, 28 Oct 2026 02:10:43 GMT  
		Size: 72.1 MB (72087753 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:feb7b6fc0162303e4b715b4dfdb697e2eb40b9db81d44f860f53a01cd6d295d0`  
		Last Modified: Wed, 28 Oct 2026 02:10:41 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31ad7690e965224f6fae4afe854173c0fbb8394f63dbacf652797d4cd894aab7`  
		Last Modified: Wed, 28 Oct 2026 02:10:42 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:latest` - unknown; unknown

```console
$ docker pull clojure@sha256:4a74b1252f6549dcf62990eb07143a60f7f99527446f49324d693aa7824d4831
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7464591 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8fbf0240179d79970acb7886176bf421f5c9fc2d4149aefc6ece2e0409150f3`

```dockerfile
```

-	Layers:
	-	`sha256:b5faf050157ea15d3109e793cbca426b28d6a444afe233140ae61e0a2413ec53`  
		Last Modified: Wed, 28 Oct 2026 02:10:40 GMT  
		Size: 7.4 MB (7439617 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f9a11892a671c0ba792e769a0506ee62f5fdb9f293097970bbeee929bdea2b74`  
		Last Modified: Wed, 28 Oct 2026 02:10:39 GMT  
		Size: 25.0 KB (24974 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:latest` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:61e6567bb1daa0e14f95e3f686edc723a5e4a1a324d188abd84ce786f2db071f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **236.7 MB (236682804 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ee480d332a0f81cd2f63e7f7c039d7157896aa766b68f0b6432a22479fb3509`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793059200'
# Thu, 29 Oct 2026 20:04:06 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 29 Oct 2026 20:04:06 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 29 Oct 2026 20:04:06 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Oct 2026 20:04:06 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 29 Oct 2026 20:04:06 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 29 Oct 2026 20:04:07 GMT
WORKDIR /tmp
# Thu, 29 Oct 2026 20:05:19 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 29 Oct 2026 20:05:19 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 29 Oct 2026 20:05:19 GMT
ENV LEIN_ROOT=1
# Thu, 29 Oct 2026 20:05:21 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 29 Oct 2026 20:05:21 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 29 Oct 2026 20:05:21 GMT
WORKDIR /tmp
# Thu, 29 Oct 2026 20:05:34 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 29 Oct 2026 20:05:34 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 29 Oct 2026 20:05:34 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 29 Oct 2026 20:05:34 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 29 Oct 2026 20:05:34 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:9e2782a4701b518d11b63dd3dedcfe1338e448f72cbf5353e854f2501ffd5e62`  
		Last Modified: Wed, 28 Oct 2026 00:10:21 GMT  
		Size: 48.4 MB (48405170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2dcbb0a971fb0b4be5fd35c7c63ac81269012a03fa77bbe1985be8d6d192c3a`  
		Last Modified: Thu, 29 Oct 2026 20:05:58 GMT  
		Size: 91.5 MB (91525597 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:597e9e72c9ce8dd344eecb322beba4564831bb3d91858df8895b57f2873e1e61`  
		Last Modified: Thu, 29 Oct 2026 20:05:56 GMT  
		Size: 20.0 MB (19977293 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61de9acacfebcda5c7d67cafe16c3c8db1de3bdfb0b53daaaf397613507f9099`  
		Last Modified: Thu, 29 Oct 2026 20:05:55 GMT  
		Size: 4.5 MB (4515224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:370b5bd2137b7aa03464acedfe0aaf1185e1d71ebbf94fe94d44ca8362a3f4d7`  
		Last Modified: Thu, 29 Oct 2026 20:05:58 GMT  
		Size: 72.3 MB (72258443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21af0802adef967fc44122aa2539476d694b29a17e7ccc39286b348b336599c4`  
		Last Modified: Thu, 29 Oct 2026 20:05:56 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:559eca8edc39b25a83ee96e3ff83755745d3d13d93637cf4c8944d6b7fadb940`  
		Last Modified: Thu, 29 Oct 2026 20:05:57 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:latest` - unknown; unknown

```console
$ docker pull clojure@sha256:ecc96ba2da0cc46cac6ea953f7a75f86487516effc25d0357b109aa96eed2d19
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7470444 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e09fa6e5c299eb18a208c91f592e917a8816fa68367ed0e386ea683ef0a885bd`

```dockerfile
```

-	Layers:
	-	`sha256:d8d2f3188f9767e6368bd71377bab9d7728cf889e0b6531d0f01464b0a052695`  
		Last Modified: Thu, 29 Oct 2026 20:05:55 GMT  
		Size: 7.4 MB (7445345 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3a61b8405a7b1a27260f5703acd35e4f42a3425c7f89d60483c377f3c398aa09`  
		Last Modified: Thu, 29 Oct 2026 20:05:55 GMT  
		Size: 25.1 KB (25099 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:latest` - linux; ppc64le

```console
$ docker pull clojure@sha256:3dcbcda9c63a685c3a03970ce8a92647882274ec49ded57dbc696e5b66d527ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.2 MB (246201678 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2cee9d0e29b976ca355c51d9c97c8549ee221d94828943c685356d3bbeb9f76e`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 09:27:28 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 09:27:28 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 09:27:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 09:27:28 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 28 Oct 2026 09:27:28 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 28 Oct 2026 09:27:28 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 09:30:48 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 28 Oct 2026 09:30:48 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 28 Oct 2026 09:30:48 GMT
ENV LEIN_ROOT=1
# Wed, 28 Oct 2026 09:30:52 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 28 Oct 2026 09:30:52 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 28 Oct 2026 09:30:52 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 09:31:40 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 28 Oct 2026 09:31:40 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 28 Oct 2026 09:31:41 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 28 Oct 2026 09:31:41 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 28 Oct 2026 09:31:41 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:76d39433e5f7ff3fe5badf80d81523262cac841a13ec65f6dee0fceb621f6b0f`  
		Last Modified: Wed, 28 Oct 2026 00:20:21 GMT  
		Size: 52.4 MB (52366307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec9bc9cd218bf6b52100e0fd864b8cf7afa7878e9ff44a9ffdceb8ebaf8fe8e2`  
		Last Modified: Wed, 28 Oct 2026 09:32:31 GMT  
		Size: 91.3 MB (91256257 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b0e9ca2fd65ef232f874e78ff200335d84fc1361373b8701e823b20addc6d65`  
		Last Modified: Wed, 28 Oct 2026 09:32:29 GMT  
		Size: 20.4 MB (20357270 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be47868f2bb901420f927f2b6a9066c441cb6af9133ffe522df5c312a6eb8c24`  
		Last Modified: Wed, 28 Oct 2026 09:32:28 GMT  
		Size: 4.5 MB (4515215 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4686fb1f51c238cf5969c4ebbf6ddc44d61b7d4300bf993ab36c0a988355c8d0`  
		Last Modified: Wed, 28 Oct 2026 09:32:31 GMT  
		Size: 77.7 MB (77705548 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86e85f133d20e23f50d3889d34e8fbc2e02e178fdab15425b66a40aa532b6ba3`  
		Last Modified: Wed, 28 Oct 2026 09:32:29 GMT  
		Size: 617.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e6f6fba610bb4cda3a0da784ca42f6c2628bc6df40f22f2506c07e3f3debc11`  
		Last Modified: Wed, 28 Oct 2026 09:32:30 GMT  
		Size: 400.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:latest` - unknown; unknown

```console
$ docker pull clojure@sha256:ebe09677614454671897dce1cb04eb5e7ef94fbed320e6fc8a197a38da6c60eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7453144 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:918dc4864e92e46cdcfa4ab4c19ca0e49b7cb9ca5c00257ab27c9947dd5a38c3`

```dockerfile
```

-	Layers:
	-	`sha256:d038323d789fc1bdfb166df0a9482f5fd60daf3d627cbe22e043e637790c4d5c`  
		Last Modified: Wed, 28 Oct 2026 09:32:28 GMT  
		Size: 7.4 MB (7428129 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f358552788e073e9df76a1a60d99e2626cf03580a68ec22f33e3980217560d2d`  
		Last Modified: Wed, 28 Oct 2026 09:32:27 GMT  
		Size: 25.0 KB (25015 bytes)  
		MIME: application/vnd.in-toto+json
