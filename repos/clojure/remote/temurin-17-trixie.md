## `clojure:temurin-17-trixie`

```console
$ docker pull clojure@sha256:f1138d3d9ae52a0c97048870ae82dfa878ed8a9f4781fb644edab946574bc368
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `clojure:temurin-17-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:db7d94819f557c8d54e05d83a554e5e47c2731a60c078509eb30a132a2cd88fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.7 MB (277745427 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98e286992909921bda0e643b456ca8365c85d98533aa5c2e057031674b99fb35`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1782172800'
# Thu, 02 Jul 2026 05:51:45 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:51:45 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:51:45 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:51:45 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 02 Jul 2026 05:51:45 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:52:04 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 02 Jul 2026 05:52:04 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 02 Jul 2026 05:52:04 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 05:52:04 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 05:52:04 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:aa3e9ef32f73c30e8b065800ee66429992d3bfea6a1fb8224afdd878ab5b994f`  
		Last Modified: Wed, 24 Jun 2026 00:28:33 GMT  
		Size: 49.3 MB (49317255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ac822ce76b5b0111767a366b67ddf9f9447bfac287aa5cfcefb1fdb52b885af`  
		Last Modified: Thu, 02 Jul 2026 05:52:30 GMT  
		Size: 145.9 MB (145906332 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0fc7883634705afeca40f8ac9abcc916fbf3bce43b37f8b0ba6da7838fac629`  
		Last Modified: Thu, 02 Jul 2026 05:52:29 GMT  
		Size: 82.5 MB (82520796 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3230c6a4f783bc64db1ca4b0d973b433693247ed39b7453b1841c2543e6a4dcf`  
		Last Modified: Thu, 02 Jul 2026 05:52:25 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90c460822f6219ac3d63ff4495a6b5d007ced1dd52957b9aed69b66202f7d9ad`  
		Last Modified: Thu, 02 Jul 2026 05:52:25 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:b7697c2db1b8c0ba7bd9cee68c09fee5dfb49ac62fe343a2332af4dc234c8b6b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7484715 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2136cbddfeb0d89fe8d4741a09ad6eee468b9c6fae2c6a24e377d1853055f673`

```dockerfile
```

-	Layers:
	-	`sha256:9149f9de6a97aab03141081b37fdfaf81b9a9770a083a3b63d241ef41e996e5e`  
		Last Modified: Thu, 02 Jul 2026 05:52:25 GMT  
		Size: 7.5 MB (7468807 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e8b5f2eae582e0d2f60de0c5868caedd907c255afeeb571b6036a42c03c29030`  
		Last Modified: Thu, 02 Jul 2026 05:52:25 GMT  
		Size: 15.9 KB (15908 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:6a6a81d47278c85d41ce24057b1f439e17922e0672dc7ec2f2b782fd23ba5882
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.7 MB (276743348 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e2a6c5411fd6c371a3ed9dab3849997da0fa2b099ca93c30040d8ee48212feb`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1782172800'
# Thu, 02 Jul 2026 05:52:14 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:52:14 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:52:14 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:52:14 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 02 Jul 2026 05:52:14 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:52:31 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 02 Jul 2026 05:52:31 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 02 Jul 2026 05:52:31 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 05:52:31 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 05:52:31 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:c8a311258fd162f6aa0db134045a19154c81a2244ff9ed7620256c95ae5d6b69`  
		Last Modified: Wed, 24 Jun 2026 00:28:21 GMT  
		Size: 49.7 MB (49678395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca4c93ae9b6051f237203cbe937ca154cbdada8faab65af873bf614b74a318d0`  
		Last Modified: Thu, 02 Jul 2026 05:52:55 GMT  
		Size: 144.7 MB (144724296 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b46c50b64ec916ec71b8423f30520a66725d6d181d62328a7db57b005b78b5b7`  
		Last Modified: Thu, 02 Jul 2026 05:52:54 GMT  
		Size: 82.3 MB (82339614 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f3333aebdf98a1e365a122fef4a359a330b8d7ea2169cbf7149581491a34787`  
		Last Modified: Thu, 02 Jul 2026 05:52:51 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d88a86f0e0cfc79d1dd0eb3fc2870869e4b3c7608fe87599473c181ea7f4c563`  
		Last Modified: Thu, 02 Jul 2026 05:52:51 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:ec0bd8f855bb443727a1e568c54bb9307017a3c37894ebc0d135ed594663e8c0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7491226 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:416eee5d6af25c6885da94f3a8b247076e7c950c7bddba53747f6a6eb0270db7`

```dockerfile
```

-	Layers:
	-	`sha256:53a9bf268c4ea96b744deef21f1a8bedae5ffa718acc3d88cbea1be7b012d318`  
		Last Modified: Thu, 02 Jul 2026 05:52:51 GMT  
		Size: 7.5 MB (7475200 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:25728e7f40d34bc0e896e70bfb8022968bc5f4b75b5698cbec86c8dda3167259`  
		Last Modified: Thu, 02 Jul 2026 05:52:51 GMT  
		Size: 16.0 KB (16026 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:15b71463e23a741f26fb1f5980a619ef9b57f312ca5122ce2f17d772182baf56
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **286.8 MB (286844134 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06f41e364d18d60ec9f753eebf01c4464c4159e72fd5fd8dcae3c221d99b6c91`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1782172800'
# Thu, 02 Jul 2026 07:11:27 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 07:11:27 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 07:11:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 07:11:27 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 02 Jul 2026 07:11:27 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 07:18:07 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 02 Jul 2026 07:18:07 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 02 Jul 2026 07:18:07 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 07:18:07 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 07:18:07 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:99b7058514c1f9221ac3b0625d731341802c32d464fd604a099ae71d3765bbfd`  
		Last Modified: Wed, 24 Jun 2026 00:30:31 GMT  
		Size: 53.1 MB (53138069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21fb6abf97389a5480079f9476410ce8496802854d1eea95873a807f0a0b4c36`  
		Last Modified: Thu, 02 Jul 2026 07:14:43 GMT  
		Size: 145.8 MB (145766153 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f39ee26f1ec825d8dfa0509e6c5d44c71054b79d9d081d20b8f3bea3430af5e`  
		Last Modified: Thu, 02 Jul 2026 07:18:49 GMT  
		Size: 87.9 MB (87938869 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b5ea15ee9fa72bd1d9c54dc8cf03faacbf7f8d063e088d5d4e6025da72900b9`  
		Last Modified: Thu, 02 Jul 2026 07:18:46 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bb28861f204ad873b36142a523651da02d8925d0e13a23efd798a3bdef4e12b`  
		Last Modified: Thu, 02 Jul 2026 07:18:46 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:9d659c124fe61c441fab507d73d48b23993719ef62a1315c3ab612da9b00f849
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7489184 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa5d05b774fffd55e0ef4ea2b34cb8b051dcb83ed772b7694a258d4c9a8aae6a`

```dockerfile
```

-	Layers:
	-	`sha256:3b414dca77eaa6abd3b14ef31937703446f0f385ee4855819a0571dcf0f7e043`  
		Last Modified: Thu, 02 Jul 2026 07:18:46 GMT  
		Size: 7.5 MB (7473228 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a6283d088b1653bccf0f94ca403f8129b05f552e208553e328b9384726fdc16a`  
		Last Modified: Thu, 02 Jul 2026 07:18:46 GMT  
		Size: 16.0 KB (15956 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-trixie` - linux; s390x

```console
$ docker pull clojure@sha256:e9a6977d1641a404c5d1a52bcb77b83325a07593a8830509307a5c737d38afec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.8 MB (268799941 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:045b37ecbff0c8b64d977091f1471f6eda306a41dd0beada81f8b3591dec9ef4`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1782172800'
# Thu, 02 Jul 2026 05:49:34 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:49:34 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:49:34 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:49:34 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 02 Jul 2026 05:49:34 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:51:42 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 02 Jul 2026 05:51:42 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 02 Jul 2026 05:51:42 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 05:51:42 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 05:51:42 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:4acbf08d84aa74ba1f41a222ae6a061c228f6ba4fc5d1d428650c7427ca1fbd3`  
		Last Modified: Wed, 24 Jun 2026 00:28:42 GMT  
		Size: 49.4 MB (49386060 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a9598fab6360d5c3867a386e94f3134b938d2577540e8d08b6fc7c90df608ef`  
		Last Modified: Thu, 02 Jul 2026 05:51:09 GMT  
		Size: 135.9 MB (135910453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb182ab6485a26d6d33031036b183ebb125117a36a29e9c0a1687383306df17b`  
		Last Modified: Thu, 02 Jul 2026 05:52:07 GMT  
		Size: 83.5 MB (83502387 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27a33acb7eec9e97b2318f76b6b5b4eeeeac65701214739d31ee636a1bd5bb09`  
		Last Modified: Thu, 02 Jul 2026 05:52:05 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:584824b21c95e2ab0d0c9d7dc9b284d5d907b315086224ccce5d8dde66bb4b40`  
		Last Modified: Thu, 02 Jul 2026 05:52:05 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:df9838c1f7245b901cb275852c7f5d67db53e3a1d29669120e73b8d0bfc6b598
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7480637 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08a5feeff4f77273d411d4f0ccfaf3d6747f945b4d6eada0bf2e866e016c12e8`

```dockerfile
```

-	Layers:
	-	`sha256:33c7c9f8b1a63b036c6c774f4609a0d3aad9a5e62ffd2366b484911afc2be021`  
		Last Modified: Thu, 02 Jul 2026 05:52:05 GMT  
		Size: 7.5 MB (7464729 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e4d00697242e451e368863dad93bf8c6ee26c256f2920d6aa5acf58823cbab03`  
		Last Modified: Thu, 02 Jul 2026 05:52:05 GMT  
		Size: 15.9 KB (15908 bytes)  
		MIME: application/vnd.in-toto+json
