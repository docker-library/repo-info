## `clojure:temurin-21-trixie`

```console
$ docker pull clojure@sha256:8243ebff3a61c081000c7007d679019846f1930a295a74406119e8de0f6f22d7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-21-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:c66f38b0c6289647d4a5ede620000c070b88dd288af17dc73211d34d46f52b54
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **290.4 MB (290392628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d98b0cf774175e9a87e8f38faf9f3ceda3b64eca0a5cc0979ab21b2d6f2f310`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 08:09:53 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 08:09:53 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 08:09:53 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 08:09:53 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 05 Nov 2026 08:09:53 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 08:10:12 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 05 Nov 2026 08:10:13 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 05 Nov 2026 08:10:13 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 05 Nov 2026 08:10:13 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 05 Nov 2026 08:10:13 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:a6dd1c05fbba4f9028078a11f143cbb625d2408921eb8207bfa1dd1ad301276f`  
		Last Modified: Thu, 05 Nov 2026 06:16:21 GMT  
		Size: 49.4 MB (49412508 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04d60d7669d525f273a18ca11b37d8b3cd6eae964d342c7912aa9d0b0384d36a`  
		Last Modified: Thu, 05 Nov 2026 08:10:40 GMT  
		Size: 158.4 MB (158409449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ff4c4260f51e0e5b5087a8015bed9e6bfa486581e2d13b046b4f9f8fdb51154`  
		Last Modified: Thu, 05 Nov 2026 08:10:38 GMT  
		Size: 82.6 MB (82569627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1a77e12c3c68e56d7c4166b9ae6f1846f17aeb546a6d67f65f58ff946ea5d42`  
		Last Modified: Thu, 05 Nov 2026 08:10:35 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2fd18498371f5b1056bbbdc43fa9c4b7655a4af19a21c3b2312bfb6c7dc0900`  
		Last Modified: Thu, 05 Nov 2026 08:10:35 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:aeceda2aa55d420169d7e667b41cc570b898f1e83eaa557d4f40592d3bce69a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7494518 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee29f248717ba4349aea9f49dd5238c26823db18c5ba0fa2f0f49ab163728ba3`

```dockerfile
```

-	Layers:
	-	`sha256:2780aa157f5a48336e9d73435c41914073c3129dbd37411189367cbc5695acca`  
		Last Modified: Thu, 05 Nov 2026 08:10:35 GMT  
		Size: 7.5 MB (7478611 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:981bfda6110fa48a6ca1681174e5ea564095d1f365f5a2d58853b6d89abf6268`  
		Last Modified: Thu, 05 Nov 2026 08:10:35 GMT  
		Size: 15.9 KB (15907 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:fbb5c24933f171b5c6fff029f7ac1456ecf7eac9112e6efe25656d63ae55df36
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **288.9 MB (288864165 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ec609859097ccc3ec5a8d0087abeea7e992c3356ebfbfba43422b106f2ccdd8`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 08:19:17 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 08:19:17 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 08:19:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 08:19:17 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 05 Nov 2026 08:19:17 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 08:19:34 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 05 Nov 2026 08:19:34 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 05 Nov 2026 08:19:34 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 05 Nov 2026 08:19:34 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 05 Nov 2026 08:19:34 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:23b69c48ce5c2a6fb0681d959fa700427ad2a7cf7e6be5d25249170a1853d7ad`  
		Last Modified: Thu, 05 Nov 2026 06:16:05 GMT  
		Size: 49.8 MB (49778604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2aee789830d2ee3ed39a0a1a11cc6eefe3aaba023bd177024a2a7413c8769ab5`  
		Last Modified: Thu, 05 Nov 2026 08:20:03 GMT  
		Size: 156.7 MB (156691645 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4bf3488b553842613c07b5ebf1011407cf235cee0e703f1c2bbcafad152e48ba`  
		Last Modified: Thu, 05 Nov 2026 08:20:01 GMT  
		Size: 82.4 MB (82392868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ad653a301f6e580c4689b9aaacb702f1ab4dd44c0e3c6fb8fd58f58ccce869f`  
		Last Modified: Thu, 05 Nov 2026 08:19:56 GMT  
		Size: 617.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cae1615e16b59fc3635fca9d42e45a6c5f3181f34b45626360686ff498e0cbff`  
		Last Modified: Thu, 05 Nov 2026 08:19:56 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:4519bb5a594806166d09a9fceb1c4d508b7aba5510026c0465121988a6d4073d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7501030 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ffb05c1f6f295250d488bc40f41c44bb5f448bb2d182268d7cf662d6c2b9931`

```dockerfile
```

-	Layers:
	-	`sha256:ba76e5cbf5766cf6533ea7d9f4ce60c2aa6af460fa5a55fb86499a266f232506`  
		Last Modified: Thu, 05 Nov 2026 08:19:56 GMT  
		Size: 7.5 MB (7485004 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:82c48d08997554403bdd86ae8bcf87667cbaa1560a644f369d187f8335974f0f`  
		Last Modified: Thu, 05 Nov 2026 08:19:56 GMT  
		Size: 16.0 KB (16026 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:775232878d31b14a4911cb8e950e3f7036d74cc7203ca27a1d9d99ccf3917ce0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **298.8 MB (298793442 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:571a6877f2bf430d784a8352f930682fe50dcd2b6f42f66efd0143d6fa79d150`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793059200'
# Thu, 29 Oct 2026 19:37:55 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 29 Oct 2026 19:37:55 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 29 Oct 2026 19:37:55 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Oct 2026 19:37:55 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 29 Oct 2026 19:37:55 GMT
WORKDIR /tmp
# Thu, 29 Oct 2026 19:47:17 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 29 Oct 2026 19:47:19 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 29 Oct 2026 19:47:20 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 29 Oct 2026 19:47:20 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 29 Oct 2026 19:47:20 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:afc58b8a231a1e6a214ec81e1a281467fb0d1d7d88266448b5a56d1ec376a47f`  
		Last Modified: Wed, 28 Oct 2026 00:24:13 GMT  
		Size: 53.2 MB (53222242 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:311fb72f126c25254fc06b361c0ee7992e00f2ec852a95f0b55faf65bec2177c`  
		Last Modified: Thu, 29 Oct 2026 19:42:07 GMT  
		Size: 157.6 MB (157573262 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76b69b190af6e6eb75b29f6794d3e3cd4766fedfd12ab9c62b1506beda7bd380`  
		Last Modified: Thu, 29 Oct 2026 19:48:05 GMT  
		Size: 88.0 MB (87996892 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb64917b6b22ecb9686f0ba42d767f28a1be7e7cc02d338dfe3e8f2920fadb6f`  
		Last Modified: Thu, 29 Oct 2026 19:48:02 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53ddff4a8417559a80e4396b88868c2567cb348d7ea824469f2d2217e9db2a5c`  
		Last Modified: Thu, 29 Oct 2026 19:48:02 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:dea5c3c14fc34536c1d475a5136f28fc3f807bc7137e7afc931ac81d490f9909
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7497738 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71fd64da0e10ba9909feac0b0eacf7e918108de499b63e8d45d001282fcfe3d9`

```dockerfile
```

-	Layers:
	-	`sha256:ae6c0287df95aadf04208ba62b6570a681e82fdbee68c405086b26b3e1399652`  
		Last Modified: Thu, 29 Oct 2026 19:48:03 GMT  
		Size: 7.5 MB (7481782 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b9fc27e21f6ee69a96129f1f223e1675690837f002531e8d06858f1b2df1bfa0`  
		Last Modified: Thu, 29 Oct 2026 19:48:02 GMT  
		Size: 16.0 KB (15956 bytes)  
		MIME: application/vnd.in-toto+json
